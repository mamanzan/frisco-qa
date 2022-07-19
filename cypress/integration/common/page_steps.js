// context("Page Layout", () => {
// 	before(() => {
// 		cy.ntlmSso(["frisco-predev.intel.com", "*.intel.com", "localhost"]);
// 		cy.wait(2000);
// 		cy.visit("http://frisco-predev.intel.com/Equipment/Stacking");
// 		cy.wait(2000);
// 	});

// 	it("Page title is FRISCO", () => {
// 		cy.title().should("eq", "FRISCO");
// 	});

// 	it("MLAF Stylesheet is linked", () => {
// 		cy.get('link[href*="it-mlaf.css"]');
// 	});

// 	it("Site Stylesheet is linked", () => {
// 		cy.get('link[href*="site.css"]');
// 	});

// 	it("App header is properly styled", () => {
// 		cy.get("nav")
// 			.should("have.class", "navbar navbar-default")
// 			.should("have.css", "height", "50px")
// 			.should("have.css", "background-color", "#0071c5")
// 			.should("have.css", "color");
// 	});

// 	it("Intel Logo graphic is properly styled", function () {
// 		cy.get(".intel-logo")
// 			.should("have.css", "height", "30px")
// 			.should("be.visible");
// 	});

// 	it("Application Name 'FRISCO' links to App Root", () => {
// 		cy.get("a").contains("FRISCO");
// 		cy.get("a").should("have.attr", "onclick", "EWC.App.Layout.GoHome()");
// 	});

// 	it("Support Link", () => {
// 		cy.get(".intelicon-support-services")
// 			.should("have.attr", "title", "Request Support")
// 			.should("be.visible");
// 	});

// 	// it("Checks that...", () => {
// 	// 	cy.title().should("eq", "FRISCO");
// 	// });
// });
