
/* ----------------------------------------------------------
  Login
---------------------------------------------------------- */

Cypress.Commands.add('login', function() {
    var username = 'cypressuser';
    var password = 'cypressuser';

    cy.visit(Cypress.env('site_url') + '/wp-admin');

    /* Login */
    cy.wait(100);
    cy.get('#user_login').type(username, {
        log: false
    });
    cy.wait(100);
    cy.get('#user_pass').type(password, {
        log: false
    });
    cy.get('#wp-submit').click();
    cy.get('body').should('have.class', 'wp-admin');
});
