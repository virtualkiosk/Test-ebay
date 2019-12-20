*** Settings ***

*** Variables ***
${HomePage_ebay_icon}                                   xpath=//*[@id="gh-logo"]
${HomePage_myebay}                                 xpath=//*[@id="gh-eb-My"]
${HomePage_search_bar}                                 xpath=//*[@id="gh-ac"]
${search_button}                                    xpath=//*[@id="gh-btn"]

*** Keywords ***
I am on ebay home page
    go to      ${ENVIRONMENT_EBAY_URL}
    maximize browser
    wait until element is visible           ${HomePage_ebay_icon}
    wait until element is visible           ${HomePage_myebay}

I search for books in search bar
    wait until element is visible           ${HomePage_search_bar}
    wait until keyword succeeds             5 times     2s    input text    ${HomePage_search_bar}     Books
    wait until keyword succeeds             5 times     2s    click element    ${search_button}
