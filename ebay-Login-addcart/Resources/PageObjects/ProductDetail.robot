*** Settings ***

*** Variables ***
${Cart_add_to_watchlist}                                 xpath=//*[@id="vi-atl-lnk"]
${Cart_add_to_cart}                                 xpath=//*[@id="vi-atl-lnk"]
${Cart_dialogue_go_to_cart}                         xpath=//*[@id="atcRedesignId_overlay-atc-container"]//span[text()="Go to cart"]
${Cart_dialogue_item_added_to_cart}                 xpath=//*[@id="atcRedesignId_overlay-atc-container"]//div[contains(text(),'1 item added to cart')]

*** Keywords ***
Add the book to the cart
    wait until element is visible           ${Cart_add_to_watchlist}
    wait until keyword succeeds             5 times     2s    click element    ${Cart_add_to_cart}

Go to the Cart
    #Verify the go to cart dialogue is open
    wait until element is visible           ${Cart_dialogue_item_added_to_cart}
    wait until keyword succeeds             5 times     2s    click element    ${Cart_dialogue_go_to_cart}
