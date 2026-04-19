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
    Wait Until Page Contains Element    id=inventory_container    10s
    Add Item To Cart
    Go To Cart
    Checkout
    Wait Until Page Contains    Checkout    10s
    Close Browser