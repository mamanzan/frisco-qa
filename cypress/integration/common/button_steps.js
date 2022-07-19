import { Given, Then, When } from "cypress-cucumber-preprocessor/steps";

Given("the {string} button is displayed", (name) => {
	cy.get(`[data-cy="${name}"]`).should("be.visible");
});

When("the {string} button is clicked", (name) => {
	cy.get(`[data-cy="${name}"]`).click();
});

Then("the {string} button should be enabled", (name) => {
	cy.get(`[data-cy="${name}"]`).should("be.enabled");
});

Then("the {string} button should be disabled", (name) => {
	cy.get(`[data-cy="${name}"]`).should("be.disabled");
});

Then("the {string} button is not displayed", (name) => {
	cy.get(`[data-cy="${name}"]`).should("not.be.visible");
});
