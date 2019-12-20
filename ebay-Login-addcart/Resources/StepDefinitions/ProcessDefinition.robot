*** Settings ***
Resource          ebay-Login-addcart/Resources/PageObjects/HomePage.robot
Resource          ebay-Login-addcart/Resources/PageObjects/SearchResults.robot
Resource          ebay-Login-addcart/Resources/PageObjects/Cart.robot
Resource          ebay-Login-addcart/Resources/PageObjects/ProductDetail.robot

*** Keywords ***
I add a book in cart
    I search for books in search bar
    click on the first item on the search result
    Add the book to the cart

I verify book is added in cart successfully
    And Go to the Cart
    Then I validate the book is added to the cart

I verify book can be removed successfully
     Remove the book from the cart
     Validate the cart is empty





