import { Given } from "cypress-cucumber-preprocessor/steps";

Given("the screen resolution is {string}", dimensions => {
	const [width, height] = dimensions.split("X");
	cy.viewport(parseInt(width), parseInt(height));
	cy.wait(1000);
});
