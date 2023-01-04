*** Settings ***
Library        SeleniumLibrary
# Library    XML
 
Resource    Resources/commons.robot
Variables    Resources/locators.py
#Test Teardown    Ending the test
 
*** Variables ***
 
*** Keywords ***
Ending the test
    close browser
 
*** Test Cases ***
 
Handling PopupWindow list
    lauching browser  https://www.w3schools.com/jsref/tryit.asp?filename=tryjsref_submit_get    headlesschrome
    # To close the popup window
    ${element}=    get webelement    xpath://*[@id="accept-choices"]
    # OR directy -> Click element    xpath://*[@id="accept-choices"]
    Click element    ${element}
    Sleep    1

    select frame    xpath://*[@id="iframeResult"]
    #click button    xpath:/html/body/button
    #execute javascript    myFunction()
    # Own function()
    ${element}=    get webelement    xpath:/html/body/button
    Execute Javascript    arguments[0].style.border='3px solid orange'    ARGUMENTS    ${element}
    Execute Javascript    arguments[0].click()    ARGUMENTS    ${element}
    capture element screenshot    ${element}    selenium-element-screenshot-{index}.png
    Capture Page Screenshot    selenium-page-screenshot-{index}.png
    #Capture Element Screenshot    ${element}    EMBED
    #Capture Page Screenshot    fullpage.jpg
    #Capture Page Screenshot    EMBED
    Unselect Frame
    Sleep    2
