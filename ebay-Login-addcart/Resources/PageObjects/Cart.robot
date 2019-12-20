*** Settings ***

*** Variables ***
${Cart_verify_go_to_checkout_button}                         xpath=//*[@id="mainContent"]//button[text()="Go to checkout"]
${Cart_remove_button_for_first_item}                xpath=//*[@data-test-id="cart-remove-item"]
${text_you_dont_have_any_items}         xpath=//*[@id="mainContent"]//span[text()="You don't have any items in your cart."]

*** Keywords ***

I validate the book is added to the cart
    wait until element is visible           ${Cart_verify_go_to_checkout_button}

Remove the book from the cart
    wait until keyword succeeds             5 times     2s    click element    ${Cart_remove_button_for_first_item}

Validate the cart is empty
    wait until element is visible           ${text_you_dont_have_any_items}
