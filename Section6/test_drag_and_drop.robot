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
    lauching browser    https://jqueryui.com/resources/demos/droppable/default.html    chrome
    #Drag And Drop    id:draggable    id:droppable
    #Drag And Drop    xpath://*[@id="draggable"]    xpath://*[@id="droppable"]
    Drag And Drop By Offset    id:draggable    400    400
    Sleep    2 
