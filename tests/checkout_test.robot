*** Settings ***
Resource    ../keywords/common_keywords.robot
Resource    ../config/config.robot

*** Test Cases ***
Checkout Flow Test
    [Tags]    smoke    check-out    web    e2e
    Open Browser To Login Page
    Input Username    standard_user
    Input Password    secret_sauce
    Click Login
    Add Item To Cart
    Go To Cart
    Checkout
    Page Should Contain    Checkout: Your Information
    Close Browser