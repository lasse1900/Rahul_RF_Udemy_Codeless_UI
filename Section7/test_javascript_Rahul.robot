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
    lauching browser  https://www.w3schools.com/jsref/tryit.asp?filename=tryjsref_submit_get    chrome
    ${element}=    get webelement    xpath://*[@id="accept-choices"]
    Log To Console    ${element}
    Click element    xpath://*[@id="accept-choices"]
    sleep    3
    select frame    xpath://*[@id="iframeResult"]
    #click button    xpath:/html/body/button
    #execute javascript    myFunction()
    ${element}=    get webelement    xpath:/html/body/button
    execute javascript    arguments[0].style.border='3px solid red'    ARGUMENTS    ${element}
    execute javascript    arguments[0].click();    ARGUMENTS    ${element}
    #capture element screenshot    ${element}    selenium-element-screenshot-{index}.png
    capture element screenshot    ${element}    EMBED
    unselect frame
    capture page screenshot    fullpage.png
    capture page screenshot    EMBED

