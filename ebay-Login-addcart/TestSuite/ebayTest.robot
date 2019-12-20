*** Settings ***
Library           SeleniumLibrary
Resource        ebay-Login-addcart/Resources/StepDefinitions/ProcessDefinition.robot
Test Setup        open browser          about:      browser=${ENVIRONMENT_BROWSER_EXECUTION}
Test Teardown     close browser

*** Variables ***
${ENVIRONMENT_BROWSER_EXECUTION}    chrome
${ENVIRONMENT_EBAY_URL}     https://www.ebay.com.au/

*** Test Cases ***
Sample ebay test case for adding and removing items in cart
    [Tags]      ebayTest            Woolworths loyality test
    Given I am on ebay home page
    When I add a book in cart
    Then I verify book is added in cart successfully
    And I verify book can be removed successfully

