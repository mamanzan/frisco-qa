import { Given, Then, When } from "cypress-cucumber-preprocessor/steps";

Given("the {string} page is visited", (page) => {
	cy.ntlmReset();

	console.log(Cypress.env("Environment"));
	const environment = Cypress.env("Environment");
	const user = Cypress.env("QAUser");
	const password = Cypress.env("QAPassword");
	const url = Cypress.env(`${environment}Url`);

	switch (environment) {
		case "Local":
		case "Developer":
			// cy.ntlmSso([
			// 	"frisco-predev.intel.com",
			// 	"frisco-dev.intel.com",
			// 	"frisco-int.intel.com",
			// 	"frisco.intel.com",
			// 	"*.intel.com",
			// 	"localhost",
			// ]);
			cy.ntlm(
				"https://frisco-int.intel.com",
				"sys_FriscoQA",
				"Fr1sco_Test_Automation_2",
				"amr"
			);

			break;
		case "CiCd":
			cy.ntlm(url, user, password, "amr");
			break;
		default:
			throw new Error(
				`The following environment ${environment} does not exist`
			);
			break;
	}

	//cy.viewport(1920, 1080);
	switch (page) {
		case "POR WIF Company Mapping":
			cy.visit(`${url}/Project/Setup`);
			break;
		case "Equipment Stacking":
			cy.visit(`${url}/Equipment/Stacking`);
			break;
		case "Project Admin":
			cy.visit(`${url}/Project/Admin`);
			break;
		case "Project List":
			cy.visit(`${url}/Project/List`);
			break;
		case "IQ Labor":
			cy.visit(`${url}/IQLabor/Report`);
			break;
		case "AT Tools":
			cy.visit(`${url}/ATTools/`);
			break;
		case "Supplier IQ Labor WIF":
			cy.visit(`${url}/IQLaborWif/Report`);
			break;
		default:
			throw new Error("This page does not exit");
			break;
	}

	cy.server();
	cy.route("POST", "/api/EquipmentStacking/GetFilteredDropdowns").as(
		"getFilteredDropdowns"
	);
});

Given("the page is cleared", () => {
	cy.get("html").click(0, 0);
	cy.wait(1000);
});

Given("the {string} is displayed", (item) => {
	cy.get(`[data-cy="${item}"]`).should("be.visible");
});

Then("the words {string} should be displayed", (text) => {
	cy.contains(text);
});

Then("the words {string} should not be displayed", (text) => {
	cy.contains(text).should("not.exist");
});

Then("the {string} should be displayed", (item) => {
	cy.get(`[data-cy="${item}"]`).should("be.visible");
});

Then("the {string} should not be displayed", (item) => {
	cy.get(`[data-cy="${item}"]`).should("not.be.visible");
});
