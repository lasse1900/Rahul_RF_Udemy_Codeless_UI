*** Settings ***
Library     SeleniumLibrary
Variables    locators.py
Library    pabot.PabotLib

*** Variables ***


*** Keywords ***
lauching browser
    [Arguments]    ${url}    ${browserName}
    open browser    ${url}    ${browserName}
    set selenium implicit wait    10 seconds
    log title

Finish Test Case
    Log    Ending the test case
    Close Browser
