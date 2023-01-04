*** Settings ***
Library         SeleniumLibrary
Resource        Resources/commons.robot
Variables       Resources/locators.py
#Test teardown

*** Keywords ***
Ending the Test
    Close Browser

*** Test Cases ***
Handling slider
    lauching browser    https://jqueryui.com/resources/demos/slider/default.html    chrome
    Drag And Drop By Offset    xpath://*[@id="slider"]    100    0
    Sleep    2
    Drag And Drop By Offset    xpath://*[@id="slider"]    -300    0
    Sleep    2



