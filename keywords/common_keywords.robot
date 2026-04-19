*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${USERNAME_FIELD}    id=user-name
${PASSWORD_FIELD}    id=password
${LOGIN_BTN}         id=login-button

*** Keywords ***
Login With Multiple Users
    [Arguments]    ${username}    ${password}
    Open Browser To Login Page
    Input Username    ${username}
    Input Password    ${password}
    Click Login
    Verify Login Success
    Close Browser

Open Browser To Login Page
    Open Browser    ${URL}    chrome
    ...    options=add_argument("--headless=new");add_argument("--no-sandbox");add_argument("--disable-dev-shm-usage");add_argument("--disable-gpu");add_argument("--window-size=1920,1080")

Input Username
    [Arguments]    ${username}
    Input Text    ${USERNAME_FIELD}    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_FIELD}    ${password}

Click Login
    Click Button    ${LOGIN_BTN}

Verify Login Success
    Wait Until Page Contains Element    css=.inventory_list

Add Item To Cart
    Click Button    css=.btn_inventory

Go To Cart
    Click Element    css=.shopping_cart_link
    Sleep    3s

Checkout
    Wait Until Element Is Visible    id=checkout    10s
    Click Button    id=checkout