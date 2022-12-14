*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
lauching browser
    [Arguments]    ${url}    ${browserName}
    open browser    ${url}    ${browserName}
    set selenium implicit wait    10 seconds
    log title
