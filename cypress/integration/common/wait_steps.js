import { Given } from "cypress-cucumber-preprocessor/steps";

When("the app waits for {string} seconds", (seconds) => {
	cy.wait(parseInt(seconds) * 1000);
});
