if (Cypress.env('test_login') == '1') {
    describe('WordPress Admin Tests', function() {
        /* Login */
        it('Should login successfully', function() {
            cy.login();
        });
    });
}
