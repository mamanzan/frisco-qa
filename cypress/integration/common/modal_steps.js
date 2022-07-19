import { Given, When, Then } from "cypress-cucumber-preprocessor/steps";

Given("the {string} modal is displayed", (name) => {
	cy.get(`.modal[data-cy="${name}"]`).should("be.visible");
});

When("the {string} modal OK button is clicked", (name) => {
	cy.get(`.modal[data-cy="${name}"]`).within(() => {
		cy.get(`[data-cy="OK"]`).click();
	});
});

Then("the {string} modal is displayed", (name) => {
	cy.get(`.modal[data-cy="${name}"]`).should("be.visible");
});

Then("the {string} modal is not displayed", (name) => {
	cy.get(`.modal[data-cy="${name}"]`).should("not.be.visible");
});

Then("the {string} popup is displayed", (name) => {
	cy.get(`[data-cy="${name}"]`).should("be.visible");
});
