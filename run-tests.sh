#!/bin/bash

# Create user
wp user create "cypressuser" cypressuser@example.com --role=editor --user_pass="cypressuser";

# Run tests
npx cypress run --browser chrome;
