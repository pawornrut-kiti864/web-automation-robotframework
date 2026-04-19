*** Settings ***
Resource    ../keywords/common_keywords.robot
Resource    ../config/config.robot

*** Test Cases ***
Add To Cart Test
    [Tags]    smoke    add-cart    web    e2e
    Open Browser To Login Page
    Input Username    standard_user
    Input Password    secret_sauce
    Click Login
    Add Item To Cart
    Go To Cart
    Page Should Contain    Sauce Labs Backpack
    Close Browser