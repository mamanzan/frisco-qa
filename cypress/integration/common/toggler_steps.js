import { Given, When, Then } from "cypress-cucumber-preprocessor/steps";

//Gherkin steps here are closely associated to SwitchTwoWay.jsx,  will probably need to refactor
//the component to be more generic

Given("the {string} toggle is visible", toggle => {
	cy.get(`[data-cy="${toggle}"]`).should("be.visible");
});

When(
	"the {string} option is selected from the {string} toggle",
	(option, toggle) => {
		cy.get(`[data-cy="${toggle}"]`).within(() => {
			cy.get(`[data-cy="${option}"]`).click();
		});
	}
);

When("the {string} toggle {string} option is selected", (toggle, option) => {
	cy.get(`[data-cy="${toggle}"]`).within(() => {
		cy.get(`[data-cy="${option}"]`).click();
		cy.wait(1000);
	});
});

Then("the {string} toggle options should be enabled", toggle => {
	cy.get(`[data-cy="${toggle}"] input`).each(option => {
		cy.wrap(option).should("be.enabled");
	});
});

Then("the {string} toggle options should be disabled", toggle => {
	cy.get(`[data-cy="${toggle}"] input`).each(button => {
		cy.wrap(button).should("not.be.enabled");
	});
});

Then("the {string} toggle is enabled", toggle => {
	cy.get(`[data-cy="${toggle}"] input`).each(button => {
		cy.wrap(button).should("be.enabled");
	});
});

Then("the {string} toggle is disabled", toggle => {
	cy.get(`[data-cy="${toggle}"] input`).each(button => {
		cy.wrap(button).should("not.be.enabled");
	});
});
