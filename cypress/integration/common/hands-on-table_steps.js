Given("the {string} hands-on-table is displayed", (table) => {
	cy.get(`[data-cy="${table}"]`).should("be.visible");
});

When(
	"the {string} hands-on-table has the cell at row {string}, column {string} clicked",
	(table, row, column) => {
		cy.wait(5000);
		cy.get(`[data-cy="${table}"] .htCore tbody tr:nth-child(${row}) .htDimmed`)
			.eq(column - 1)
			.click({ force: true });
	}
);

Then(
	"the {string} hands-on-table should display a total of {string} rows",
	(table, count) => {
		cy.wait(5000);
		cy.get(`[data-cy="${table}"] .ht_master.handsontable tbody tr`).should(
			"have.length",
			parseInt(count)
		);
	}
);

Then(
	"the {string} hands-on-table should display a total of {string} rows",
	(table, count) => {
		cy.wait(5000);

		cy.get(`[data-cy="${table}"] .ht_master.handsontable tbody tr`).should(
			"be.gt",
			count
		);
	}
);

Then(
	"the {string} hands-on-table should display a column header named {string}",
	(table, name) => {
		let isFound = false;
		cy.get(`[data-cy="${table}"] .htCore thead tr th .colHeader`)
			.each((header) => {
				const text = header.text();

				if (text.replace(/\s+/g, "") === name.replace(/\s+/g, "")) {
					isFound = true;
					console.log("Found it");
					return false;
				}
			})
			.then(() => {
				expect(isFound).to.be.true;
			});
	}
);

Then("the {string} hands-on-table should display", (table) => {
	cy.wait(5000);
	cy.get(`[data-cy="${table}"]`).should("be.visible");
});

Then("the {string} hands-on-table should be displayed", (table) => {
	cy.wait(5000);
	cy.get(`[data-cy="${table}"]`).should("be.visible");
});

Then(
	"the {string} hands-on-table should display {string} at row {string}, column {string}",
	(table, text, row, column) => {
		cy.wait(5000);
		cy.get(`[data-cy="${table}"] .htCore tbody tr:nth-child(${row}) .htDimmed`)
			.eq(column - 1)
			.contains(text);
	}
);
