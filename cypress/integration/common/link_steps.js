import { Given, When } from "cypress-cucumber-preprocessor/steps";

Given("the {string} link is displayed", name => {
	cy.get(`[data-cy="${name}"]`).should("be.visible");
});

When("the {string} link is clicked", name => {
	cy.get(`[data-cy="${name}"]`).click();
});
