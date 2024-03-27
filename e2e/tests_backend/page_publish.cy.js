if (Cypress.env('test_page_publish') == '1') {
    describe('WordPress Admin Tests', function() {

        /* Test page publish */
        it('Create a webpage', function() {
            cy.login();

            cy.get('#menu-pages').contains('Pages').click();
            cy.get('.wp-heading-inline').should('have.text', '\nPages');
            cy.get('.page-title-action').click();
            cy.get('#title').type('My page');
            cy.get('#publish').click();
            cy.get('#title').should('have.value', 'My page');
        });

    });

}
