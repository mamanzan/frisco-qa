import { Given, Then, When } from "cypress-cucumber-preprocessor/steps";

Given("the {string} table is displayed", name => {
	cy.get(`[data-cy="${name}"]`).should("be.visible");
});

When(
	"the {string} table has the {string} button clicked at row {string}, column {string}",
	(table, button, row, column) => {
		cy.wait(5000);
		cy.get(
			`[data-cy="${table}"] .rt-tbody .rt-tr-group:nth-child(${row}) .rt-td:nth-child(${column})`
		).within(() => {
			cy.get(`[data-cy="${button}"]`).click();
			cy.wait(2000);
		});
	}
);

When(
	"the {string} table has the {string} link clicked at row {string}, column {string}",
	(table, link, row, column) => {
		cy.wait(5000);
		cy.get(
			`[data-cy="${table}"] .rt-tbody .rt-tr-group:nth-child(${row}) .rt-td:nth-child(${column})`
		).within(() => {
			cy.get(`[data-cy="${link}"]`).click();
			cy.wait(2000);
		});
	}
);

Then("the {string} table should be displayed", name => {
	cy.wait(5000);
	cy.get(`[data-cy="${name}"]`).should("be.visible");
});

Then(
	"the {string} table should display a total of {string} rows",
	(table, count) => {
		cy.wait(5000);
		cy.get(`[data-cy="${table}"] .rt-tbody .rt-tr:not(.-padRow)`).should(
			"have.length",
			parseInt(count)
		);
	}
);

Then(
	"the {string} table should display more than {string} rows",
	(table, count) => {
		cy.wait(5000);
		cy.get(`[data-cy="${table}"] .rt-tbody .rt-tr:not(.-padRow)`).should(
			"have.length.greaterThan",
			parseInt(count)
		);
	}
);

Then(
	"the {string} table should display less than {string} rows",
	(table, count) => {
		cy.wait(5000);
		cy.get(`[data-cy="${table}"] .rt-tbody .rt-tr:not(.-padRow)`).should(
			"have.length.lessThan",
			parseInt(count)
		);
	}
);

Then(
	"the {string} table should display a total of {string} columns",
	(table, count) => {
		cy.wait(5000);
		cy.get(`[data-cy="${table}"] .rt-thead:first-child .rt-tr .rt-th`).should(
			"have.length",
			parseInt(count)
		);
	}
);

Then(
	"the {string} table should display a column header named {string}",
	(table, name) => {
		cy.wait(5000);
		let isFound = false;
		cy.get(`[data-cy="${table}"] .rt-thead:first-child .rt-tr .rt-th`)
			.each(header => {
				const text = header[0].innerText;
				if (text.indexOf(name) >= 0) {
					isFound = true;
					console.log("Found it");
					return false;
				}
			})
			.then(() => {
				console.log("Then being executed");
				expect(isFound).to.be.true;
			});
	}
);

Then(
	"the {string} table should display {string} at row {string}, column {string}",
	(table, text, row, column) => {
		cy.wait(5000);
		cy.get(
			`[data-cy="${table}"] .rt-tbody .rt-tr-group:nth-child(${row}) .rt-td:nth-child(${column})`
		).contains(text);
	}
);
