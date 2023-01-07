*** Settings ***
Library    SeleniumLibrary
Variables    ../Resources/locators.py

*** Keywords ***
Verify toyota car heading
    [Arguments]    ${carheading}
    Element Text Should Be    ${carheading_xpath}    ${carheading}