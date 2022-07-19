// /// <reference types="Cypress" />

// context("Equipment Stacking", () => {
// 	before(() => {
// 		//cy.server();
// 		// cy.route(
// 		// 	"https://frisco-int.intel.com/api/EquipmentStacking/GetSuppliers"
// 		// ).as("getSuppliers");
// 		// cy.route(
// 		// 	"https://frisco-int.intel.com/api/EquipmentStacking/GetFilteredDropdowns"
// 		// ).as("getFilterDropdowns");

// 		cy.ntlmReset();
// 		//cy.ntlmSso(["frisco-dev.intel.com", "*.intel.com", "localhost"]);
// 		cy.ntlm(
// 			"https://frisco-int.intel.com",
// 			"sys_FriscoQA",
// 			"Fr1sco_Test_Automation",
// 			"amr"
// 		);

// 		cy.wait(2000);
// 		cy.visit("https://frisco-int.intel.com/Equipment/Stacking");
// 		//cy.wait("@hasAccess");
// 		//cy.wait("@getSupplers");
// 	});

// 	it("Checks that the Supplier search textbox exists", () => {
// 		cy.wait(2000);
// 		cy.viewport(1920, 1080);
// 		cy.get("input.look-ahead-single-select__search-box").should("exist");
// 	});

// 	it("Types into the Supplier Search Textbox", () => {
// 		cy.wait(2000);
// 		cy.viewport(1920, 1080);
// 		cy.wait(500); //had to slow it down for the dropdown to spawn.
// 		cy.get("input.look-ahead-single-select__search-box")
// 			.type("amat", { delay: 500 })
// 			.should("have.value", "amat");
// 	});

// 	it('Checks that Supplier "AMAT" is in the list', () => {
// 		cy.viewport(1920, 1080);
// 		cy.get("ul.look-ahead-single-select__list")
// 			.children()
// 			.should("have.contain.text", "AMAT");
// 	});

// 	it('Clicks the Supplier "AMAT"', () => {
// 		cy.server();
// 		cy.route("POST", "/api/EquipmentStacking/GetFilteredDropdowns").as(
// 			"getFilteredDropdowns"
// 		);
// 		//cy.wait(5000);
// 		//cy.viewport(1920, 1080);
// 		cy.get("ul.look-ahead-single-select__list>li").first().click();
// 		cy.wait("@getFilteredDropdowns").then(xhr => {
// 			console.log(xhr);
// 		});
// 	});

// 	it('Checks that "Tool Line" selector exists', () => {
// 		cy.viewport(1920, 1080);
// 		cy.get("div.drop-down-multi__selected")
// 			.should("exist")
// 			.first()
// 			.should("have.text", "Tool Line (0) ");
// 	});

// 	it('Checks that "Process" selector exists', () => {
// 		cy.viewport(1920, 1080);
// 		cy.get("div.drop-down-multi__selected")
// 			.should("exist")
// 			.eq(1)
// 			.should("have.text", "Process (0) ");
// 	});

// 	it('Checks that "Location" selector exists', () => {
// 		cy.viewport(1920, 1080);
// 		cy.get("div.drop-down-multi__selected")
// 			.should("exist")
// 			.eq(2)
// 			.should("have.text", "Location (0) ");
// 	});

// 	it('Checks that "Category" selector exists', () => {
// 		cy.viewport(1920, 1080);
// 		cy.get("div.drop-down-multi__selected")
// 			.should("exist")
// 			.eq(3)
// 			.should("have.text", "Category (1) ");
// 	});

// 	it('Checks that the "EntityType / CEID" search textbox exists', () => {
// 		cy.viewport(1920, 1080);
// 		cy.get("input.look-ahead__search-box").should("exist");
// 	});

// 	it('Checks that the "RTD" button exists', () => {
// 		cy.viewport(1920, 1080);
// 		cy.get("input#sw2Way-RTD-mileStoneFilter").should("exist");
// 	});

// 	it('Checks that the "STD" button exists', () => {
// 		cy.viewport(1920, 1080);
// 		cy.get("input#sw2Way-STD-mileStoneFilter").should("exist");
// 	});

// 	it('Checks that the "STD" button is checked', () => {
// 		cy.viewport(1920, 1080);
// 		cy.get("input#sw2Way-STD-mileStoneFilter")
// 			.should("exist")
// 			.should("have.attr", "checked");
// 	});

// 	it('Checks that the "Public Safe = Yes" button exists', () => {
// 		cy.viewport(1920, 1080);
// 		cy.get("input#sw2Way-true-publicFilter").should("exist");
// 	});

// 	it('Checks that the "Public Safe = Yes" button is checked', () => {
// 		cy.viewport(1920, 1080);
// 		cy.get("input#sw2Way-true-publicFilter")
// 			.should("exist")
// 			.should("have.attr", "checked");
// 	});

// 	it('Checks that the "Public Safe = Yes" button is disabled', () => {
// 		cy.viewport(1920, 1080);
// 		cy.get("input#sw2Way-true-publicFilter")
// 			.should("exist")
// 			.should("have.attr", "disabled");
// 	});

// 	it('Checks that the "Public Safe = No" button exists', () => {
// 		cy.viewport(1920, 1080);
// 		cy.get("input#sw2Way-false-publicFilter").should("exist");
// 	});

// 	it('Checks that the "Public Safe = No" button is disabled', () => {
// 		cy.viewport(1920, 1080);
// 		cy.get("input#sw2Way-false-publicFilter")
// 			.should("exist")
// 			.should("have.attr", "disabled");
// 	});

// 	it('Checks that the "Date Range:" input exists', () => {
// 		cy.viewport(1920, 1080);
// 		cy.get("input.equipmentStackingDateInput").should("exist");
// 	});

// 	it('Checks that the "Capacity:" input exists', () => {
// 		cy.viewport(1920, 1080);
// 		cy.get("input[type='number']").should("exist");
// 	});

// 	it('Checks that the "Capacity:" input exists', () => {
// 		cy.viewport(1920, 1080);
// 		cy.get("input[type='number']").should("exist");
// 	});

// 	it('Checks that the "Capacity:" input contains "0"', () => {
// 		cy.viewport(1920, 1080);
// 		cy.get("input[type='number']").should("exist").should("have.value", "0");
// 	});

// 	it('Checks that the "Go!" button exists', () => {
// 		cy.viewport(1920, 1080);
// 		cy.get("button.go").should("exist");
// 	});

// 	it('Checks that the "Go!" button can be clicked', () => {
// 		cy.viewport(1920, 1080);
// 		cy.get("button.go").should("exist").click();
// 	});
// });
