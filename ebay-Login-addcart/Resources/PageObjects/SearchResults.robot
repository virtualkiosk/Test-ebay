*** Settings ***

*** Variables ***
${HomePage_search_complete}                                 xpath=//*[@id="gh-cat"]
${SearchResults_firstItem}                                 xpath=//*[@id="srp-river-results-listing1"]//h3
${HomePage_search_bar}                                 xpath=//*[@id="gh-ac"]

*** Keywords ***
click on the first item on the search result
    wait until element is visible           ${HomePage_search_complete}
    wait until keyword succeeds             5 times     2s    click element    ${SearchResults_firstItem}

