import { Given, When, Then } from "cypress-cucumber-preprocessor/steps";

Given("the {string} simple table is displayed", name => {
	cy.get(`.table[data-cy="${name}"]`).should("be.visible");
});

Then("the {string} simple table should be displayed", name => {
	cy.wait(5000);
	cy.get(`.table[data-cy="${name}"]`).should("be.visible");
});

Then(
	"the {string} simple table should display a total of {string} rows",
	(table, count) => {
		cy.wait(5000);
		cy.get(`.table[data-cy="${table}"] tbody tr`).should(
			"have.length",
			parseInt(count)
		);
	}
);

Then(
	"the {string} simple table should display at least {string} rows",
	(table, count) => {
		cy.wait(5000);
		cy.get(`.table[data-cy="${table}"] tbody tr`).should(
			"have.length.least",
			parseInt(count)
		);
	}
);
