describe('Front test', function() {

    it('Should load the home page', function() {
        cy.visit(Cypress.env('site_url'));
        cy.get('.main-title a').should('contain', 'Ludovilk');
    });

});
