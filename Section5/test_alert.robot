*** Settings ***
Library        SeleniumLibrary

Resource    Resources/commons.robot
Variables    Resources/locators.py
#Suite Teardown    Ending the test

*** Variables ***

*** Keywords ***
Ending the test
    Close Browser


*** Test Cases ***

    
Handling dropboxes
    lauching browser    https://www.way2automation.com/way2auto_jquery/index.php    chrome
    Click Link    link:ENTER TO THE TESTING WEBSITE
    Click Element    xpath://*[@id="wrapper"]/div/div/div[6]/ul/li/a/figure
    @{windowHandles}=    get window handles
    log to console    ${windowHandles}
    switch window    ${windowHandles}[1]
    select frame    xpath://*[@id="example-1-tab-1"]/div/iframe
    click button    xpath:/html/body/button
    ${alert}=    handle alert    action=DISMISS
    log to console    ${alert}
    Unselect Frame
    Click Element    xpath://*[@id="wrapper"]/div[1]/div[1]/div[1]/ul/li[2]/a
    Select Frame     xpath://*[@id="example-1-tab-2"]/div/iframe
    Click Button    xpath:/html/body/button
    Input Text Into Alert    Lasse testaaja
    Sleep    3

