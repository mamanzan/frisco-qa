import { Given, Then, When } from "cypress-cucumber-preprocessor/steps";

Given("the {string} input is displayed", name => {
	cy.get(`[data-cy="${name}"]`).should("be.visible");
});

Given("the {string} input is cleared", name => {
	cy.get(`input[data-cy="${name}"]`).clear();
});

When("{string} is typed into the {string} input", (text, name) => {
	cy.get(`[data-cy="${name}"]`).type(text, { delay: 700 });
});

When("the {string} input has {string} typed in", (name, text) => {
	cy.get(`input[data-cy="${name}"]`).type(text, { delay: 500 });
});

When("the {string} input is cleared", name => {
	cy.get(`input[data-cy="${name}"]`).clear();
});

When("the {string} input {string} option is selected", (name, option) => {
	cy.get(`[data-cy="${name}"]`).within(() => {
		cy.get(`[data-cy="${option}"]`).click();
	});
	//click off to the side to hide the dropdown which might stay open
	cy.get("html").click(0, 0);
	cy.wait(3000);
});

//TODO : this is tied to closely to a checkbox input
When(
	"the {string} input {string} checkbox option is selected",
	(name, option) => {
		cy.get(`[data-cy="${name}"]`).within(() => {
			cy.get(`[data-cy="${option}"] input`).click();
			//check for api call
		});
	}
);

When("the {string} input has a random option selected", name => {
	cy.get(`[data-cy="${name}"]`).within(() => {
		cy.wait(1000);
		cy.get(`[class*="item-input"]`).then(items => {
			const random = Math.floor(Math.random() * items.length);
			cy.get(items[random]).click();
		});
	});
});

Then(
	"the {string} input should display the {string} option",
	(name, option) => {
		cy.get(`[data-cy="${name}"]`).within(() => {
			cy.get(`[data-cy="${option}"]`).should("be.visible");
		});
	}
);

Then(
	"the {string} input should display a total of {string} options",
	(name, count) => {
		cy.get(`[data-cy="${name}"] [class*='list-item']`).should(
			"have.length",
			count
		);
	}
);

Then(
	"the {string} input should display at least {string} options",
	(name, count) => {
		cy.wait(2000);
		cy.get(`[data-cy="${name}"] [class*='list-item']`).should(items => {
			expect(items.length).to.be.greaterThan(parseInt(count));
		});
	}
);

Then("the {string} input should display several options", name => {
	cy.wait(2000);
	cy.get(`[data-cy="${name}"] [class*='list-item']`).should(items => {
		expect(items.length).to.be.greaterThan(0);
	});
});

Then(
	"the {string} input should display a selected count of {string}",
	(name, count) => {
		cy.get(`[data-cy="${name}"]`).within(() => {
			cy.get(`[data-cy="Count"]`).contains(count);
		});
	}
);

Then("the {string} input should display a close icon", (name, count) => {
	cy.get(`[data-cy="${name}"]`).within(() => {
		cy.get(`[data-cy="Close"]`).should("exist");
	});
});
