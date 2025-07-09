*** Settings ***
Library    PuppeteerLibrary
Resource    ./TestConfigManagement.resource
Variables    ../Config/SITE_CONFIG_DEFAULT.yml


*** Keywords ***
Default Suite Setup
    Load test data variables
    Load site config variables

Default Suite Teardown
    Close Puppeteer

Default Test Setup
    &{options} =    create dictionary    headless=${False}

Default Test Teardown
    Close All Browser
