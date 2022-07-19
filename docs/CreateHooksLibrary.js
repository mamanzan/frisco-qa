const fs = require("fs");
const fsPromises = fs.promises;
const { promisify } = require("util");
//const readdir = util.promisify(fs.readdir);
const basePath = "./cypress/integration/common/";
const documentName = "AvailableHooks.md";

function readDirectory(path) {
	return new Promise(function (resolve, reject) {
		fs.readdir(path, function (error, result) {
			if (error) {
				reject(error);
			} else {
				resolve(result);
			}
		});
	});
}

const readFile = filePath => {
	const result = fs.readFileSync(filePath, "utf8", (err, data) => {
		if (err) {
			console.error(err);
			return;
		}
	});
	return result;
};

const findSteps = (stepType, text) => {
	const givenRegex = new RegExp(`${stepType}\\(\\s?\\s?.*\\",`, "g");
	//const givenRegex = /Given\(\".*\",/g;
	//const givenRegex = /Then\(\s?.*\",/g;
	const matches = text.match(givenRegex);
	let result = [];
	if (!matches || matches.length === 0) return [];

	matches.forEach(m => {
		const cleanup = m
			.replace(`${stepType}("`, "")
			.replace(`${stepType}(\r\n\t"`, "")
			.replace('",', "");
		result.push(cleanup);
	});

	return result;
};

const writeMarkdown = componentDocs => {
	var stream = fs.createWriteStream(`./docs/${documentName}`, { flags: "a" });

	componentDocs.forEach(cd => {
		const capitalize = cd.name.charAt(0).toUpperCase() + cd.name.slice(1);
		stream.write(`## ${capitalize}\n\n`);

		stream.write(`|Given|When|Then|\n`);
		stream.write(`|---|---|---|\n`);
		for (let i = 0; i < cd.maxRows; i++) {
			const given = cd.givenSteps[i] === undefined ? "" : cd.givenSteps[i];
			const when = cd.whenSteps[i] === undefined ? "" : cd.whenSteps[i];
			const then = cd.thenSteps[i] === undefined ? "" : cd.thenSteps[i];
			stream.write(`|${given}|${when}|${then}|\n`);
		}
	});

	stream.end();
};

try {
	fs.unlinkSync(`./docs/${documentName}`);
} catch (err) {
	console.log("File doesn't exist", err);
}
readDirectory(basePath).then(files => {
	console.log("files:", files);
	let componentDocs = [];
	files.forEach(file => {
		const renamed = file.replace("_steps.js", "");
		const text = readFile(`${basePath}/${file}`);
		const givenSteps = findSteps("Given", text);
		const whenSteps = findSteps("When", text);
		const thenSteps = findSteps("Then", text);
		const maxRows = Math.max(
			givenSteps.length,
			whenSteps.length,
			thenSteps.length
		);

		const componentDoc = {
			name: renamed,
			givenSteps,
			whenSteps,
			thenSteps,
			maxRows
		};
		componentDocs.push(componentDoc);
	});
	//console.log("ComponentDocs", componentDocs);
	writeMarkdown(componentDocs);
});

// const onefile = readFile("./cypress/integration/common/button_steps.js");

// const givenResults = findGivenSteps(onefile);
// console.log("Given Results", givenResults);

//writeMarkdown("Dropdown");
//writeMarkdown("Dropdown Checkbox");
