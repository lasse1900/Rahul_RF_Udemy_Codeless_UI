*** Settings ***
Library         SeleniumLibrary
Resource        Resources/commons.robot
Variables       Resources/locators.py
#Test teardown

*** Keywords ***
Ending the Test
    Close Browser

*** Test Cases ***
Handling Resizable
    lauching browser    https://jqueryui.com/resources/demos/resizable/default.html  chrome
    Drag And Drop By Offset    xpath://*[@id="resizable"]/div[3]   400    400
    Sleep    2
