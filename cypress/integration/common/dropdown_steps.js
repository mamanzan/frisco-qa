import { Given, Then, When } from "cypress-cucumber-preprocessor/steps";
// beforeEach(() => {
// 	cy.server();
// 	cy.route("**/**").as("GetProjects");
// });

Given("the {string} dropdown is displayed", name => {
	cy.get(`[data-cy="${name}"]`).should("be.visible");
});

When("the {string} dropdown is opened", name => {
	cy.get(`[data-cy="${name}"]`).click();
	cy.wait(2000);
});

When(
	"the {string} dropdown is opened and {string} is selected",
	(name, option) => {
		cy.get(`[data-cy="${name}"]`)
			.click()
			.within(() => {
				cy.get(`[data-cy="${option}"]`).click();
				//const areasApi = "@GetCompanyDisciplinesByArea";
				cy.wait(1000);
			});
		//click off to the side to hide the dropdown which might stay open
		cy.get("html").click(0, 0);
		//cy.wait("@GetProjects");
	}
);

When(
	"the {string} dropdown {string} is selected",
	(name, option) => {
		cy.get(`[data-cy="${name}"]`)
			.within(() => {
				cy.get(`[data-cy="${option}"]`).click();
				//const areasApi = "@GetCompanyDisciplinesByArea";
				cy.wait(1000);
			});
		//click off to the side to hide the dropdown which might stay open
		cy.get("html").click(0, 0);
		//cy.wait("@GetProjects");
	}
);

Then("the {string} dropdown should be displayed", name => {
	cy.get(`[data-cy="${name}"]`).should("be.visible");
});

Then("the {string} dropdown should display several options", name => {
	cy.wait(2000);
	cy.get(`[data-cy="${name}"] [class*='item']`).should(items => {
		expect(items.length).to.be.greaterThan(0);
	});
});

Then(
	"the {string} dropdown should display the {string} option",
	(name, option) => {
		cy.wait(2000);
		cy.get(`[data-cy="${name}"]`).within(() => {
			cy.get(`[data-cy="${option}"]`).should("be.visible");
		});
	}
);

Then("the {string} dropdown should not be diplayed", name => {
	cy.get(`[data-cy="${name}"]`).should("not.be.visible");
});

Then(
	"the {string} dropdown should display a total of {string} options",
	(name, count) => {
		cy.get(`[data-cy="${name}"] [class$="__item"]`).should(
			"have.length",
			count
		);
	}
);
