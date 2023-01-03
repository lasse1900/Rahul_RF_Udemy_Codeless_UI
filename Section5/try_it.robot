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
    lauching browser    https://www.w3schools.com/jsref/tryit.asp?filename=tryjsref_submit_get    chrome
    Close Browser
    Open Browser    https://www.w3schools.com/jsref/tryit.asp?filename=tryjsref_submit_get    chrome
    Sleep    2
    #Click Button    xpath://*[@id="accept-choices"]
    #Click Button    xpath:/html/body/div[5]/div/div/div/div[3]/div[2]/div[2]
    Select Frame    xpath://*[@id="iframeResult"]

    Click Button    xpath:/html/body/button
    Sleep    1
