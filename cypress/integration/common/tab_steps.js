import { Given, Then, When } from "cypress-cucumber-preprocessor/steps";

Given("the {string} tab is displayed", name => {
	cy.get(`[data-cy="${name}"]`).should("be.visible");
});

When("the {string} tab is clicked", name => {
	cy.get(`[data-cy="${name}"]`).click();
});

Then("the {string} tab should be enabled", name => {
	cy.get(`[data-cy="${name}"]`).should("be.enabled");
});
