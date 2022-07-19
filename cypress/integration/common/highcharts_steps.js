import { Given, Then, When } from "cypress-cucumber-preprocessor/steps";

Given("the {string} highcharts graph is displayed", (name) => {
	cy.wait(20000);
	cy.get(`[data-cy="${name}"]`).should("be.visible");
});

Then("the {string} highcharts graph should be displayed", (name) => {
	cy.wait(20000);
	cy.get(`[data-cy="${name}"]`).should("be.visible");
});

Then(
	"the {string} highcarts graph should display a total number of {string} legend items",
	(name, count) => {
		cy.get(`[data-cy="${name}"]`).within(() => {
			cy.get(`.highcharts-legend-item.highcharts-column-series`).should("have.length", count);
		});
	}
);

Then("the {string} highcharts graph should display a y-axis that says {string}", (name, text) => {
	cy.get(`[data-cy="${name}"]`).within(() => {
		cy.get(`.highcharts-axis.highcharts-yaxis`).contains(text);
	});
});

Then("the {string} highcharts graph should display a subtitle that says {string}", (name, text) => {
	cy.get(`[data-cy="${name}"]`).within(() => {
		cy.get(`.highcharts-subtitle`).contains(text);
	});
});

Then("the {string} highcharts graph should display a title that says {string}", (name, text) => {
	cy.get(`[data-cy="${name}"]`).within(() => {
		cy.get(`.highcharts-title`).contains(text);
	});
});

Then("the {string} highcharts graph should display a plot line", (name) => {
	cy.get(`[data-cy="${name}"]`).within(() => {
		cy.get(`.highcharts-plot-line-label`).should("be.visible");
	});
});
