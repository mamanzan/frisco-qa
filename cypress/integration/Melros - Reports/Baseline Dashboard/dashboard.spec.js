/// <reference types="Cypress" />

context('DashBoard', () => {
    before(() => {
        cy.ntlmSso(["frisco-predev.intel.com", "*.intel.com", "localhost"]);
        cy.viewport(1920, 1080);
        cy.visit("http://frisco-predev.intel.com/Baseline/Dashboard");
    });

    it('should have indicators', () => {
        cy.get('div.indicators')
            .should('exist');
    });
    it('should have length of 5', () => {
        cy.get('div.indicators')
            .children()
            .should('have.length', 5);
    });
    it('should have title of "Commit"', () => {
        cy.get('div.indicators')
            .children()
            .children()
            .children()
            .should('have.class', 'indicator__title')
            .should('have.contain.text', 'Commit');
    });
    it('should have title of "Change"', () => {
        cy.get('div.indicators')
            .children()
            .children()
            .children()
            .should('have.class', 'indicator__title')
            .should('have.contain.text', 'Change');
    });
    it('should have title of "Projects"', () => {
        cy.get('div.indicators')
            .children()
            .children()
            .children()
            .should('have.class', 'indicator__title')
            .should('have.contain.text', 'Projects');
    });
    it('should have title of "Plan"', () => {
        cy.get('div.indicators')
            .children()
            .children()
            .children()
            .should('have.class', 'indicator__title')
            .should('have.contain.text', 'Plan');
    });
    it('should have title of "Phase"', () => {
        cy.get('div.indicators')
            .children()
            .children()
            .children()
            .should('have.class', 'indicator__title')
            .should('have.contain.text', 'Phase');
    });
});
