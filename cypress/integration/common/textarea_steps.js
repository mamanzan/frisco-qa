Given("the {string} text area is displayed", (name, text) => {
	cy.get(`textarea[data-cy="${name}"]`).should("be.visible");
});

When("the {string} text area has {string} typed in", (name, text) => {
	cy.get(`textarea[data-cy="${name}"]`).type(text, { delay: 500 });
});

Then(
	"the {string} text area should contain the text {string}",
	(name, text) => {
		cy.get(`textarea[data-cy="${name}"]`).contains(text);
	}
);
