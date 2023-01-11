*** Settings ***

Library    AppiumLibrary



*** Test Cases ***
Launch Browser
    Open Application    http://127.0.0.1:4723/wd/hub    automationName=UIAutomator2    platformName=Android
    ...    platformVersion=11    
    Sleep    2
    Close Application
    

