*** Settings ***
Resource    ../keywords/common_keywords.robot
Resource    ../config/config.robot
Resource    ../resources/test_data.robot

Test Template    Login With Multiple Users

*** Test Cases ***
Login Test
    [Tags]    smoke    login    web    e2e
    standard_user    secret_sauce
    problem_user     secret_sauce