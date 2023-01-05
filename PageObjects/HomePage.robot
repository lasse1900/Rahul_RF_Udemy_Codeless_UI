*** Settings ***
Library    SeleniumLibrary
Variables    ../Resources/locators.py

*** Keywords ***
Go To new cars page
    Mouse Over    ${newcar_xpath}
    Click Element    ${findnewcar_xpath}
    Element Text Should Be    ${newcar_header_xpath}    NEW CARS

Find New cars


Finf Old cars


Search the page
