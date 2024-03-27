#!/bin/bash

###################################
## WPU Cypress Tests v 0.1.0
###################################

function run_wpu_cypress_tests_install () {

    local SCRIPTDIR="$( realpath $(dirname "${BASH_SOURCE[0]}") )/";
    cd "${SCRIPTDIR}..";
    local INSTALLROOTDIR="$(pwd)/";
    local CYPRESSROOT="${INSTALLROOTDIR}cypress/";
    local mywebsiteurl;


    read -p 'What is your local site URL (example: "http://mywebsite.test/" ) ? ' mywebsiteurl;

    # Create basic directories
    mkdir "${CYPRESSROOT}";
    mkdir "${CYPRESSROOT}e2e";

    # Symlink from WPU
    ln -s "${SCRIPTDIR}support" "${CYPRESSROOT}support";
    ln -s "${SCRIPTDIR}e2e/tests_backend" "${CYPRESSROOT}e2e/tests_backend";

    # Copy some files
    cp "${SCRIPTDIR}package.json" "${INSTALLROOTDIR}package.json";
    cp "${SCRIPTDIR}e2e/example.cy.js" "${CYPRESSROOT}e2e/example.cy.js";
    cp "${SCRIPTDIR}cypress.config.js" "${INSTALLROOTDIR}cypress.config.js";
    cp "${SCRIPTDIR}run-tests.sh" "${INSTALLROOTDIR}run-tests.sh";

    # Replace some params
    sed -i.bak "s#mywebsiteurl#${mywebsiteurl}#" "${INSTALLROOTDIR}cypress.config.js";

    # Clean node
    rm -rf "${INSTALLROOTDIR}node_modules";

    # Install
    yarn;

}

run_wpu_cypress_tests_install;
