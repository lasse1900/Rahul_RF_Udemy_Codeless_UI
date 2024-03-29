*** Settings ***

Library    AppiumLibrary

Test Teardown    Close Application

*** Variables ***
${ANDROID_AUTOMATION_NAME}=    UIAutomator2
${ANDROID_PLATFORM_NAME}=    Android
${ANDROID_PLATFORM_VERSION}=    11
${ANDROID_BROWSER_NAME}=    Chrome

*** Keywords ***
Launch Browser
    Open Application    http://127.0.0.1:4723/wd/hub    automationName=${ANDROID_AUTOMATION_NAME}    platformName=${ANDROID_PLATFORM_NAME}
    ...    platformVersion=${ANDROID_PLATFORM_VERSION}    browserName=${ANDROID_BROWSER_NAME}

*** Test Cases ***
Google Web Test
    Launch Browser
    go to url    http://google.com
    # Input Text    //*[@name='q']    Hello Robot
    # go to url    http://www.iltasanomat.fi
    Sleep    2

    

