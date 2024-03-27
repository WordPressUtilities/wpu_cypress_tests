const {
    defineConfig
} = require("cypress");

module.exports = defineConfig({
    e2e: {
        experimentalStudio: true
    },
    env: {
        /* Common */
        "site_url": "mywebsiteurl",
        /* Flags */
        "test_login": "1",
        "test_page_publish": "1",
    },
});
