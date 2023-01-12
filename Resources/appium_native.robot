*** Settings ***

Library    AppiumLibrary


*** Variables ***
${ANDROID_AUTOMATION_NAME}=    UIAutomator2
${ANDROID_PLATFORM_NAME}=    Android
${ANDROID_PLATFORM_VERSION}=    11
${ANDROID_APP_PACKAGE}=    
${ANDROID_APP_ACTIVITY}=    


*** Keywords ***
Open Native App
    Open Application    http://127.0.0.1:4723/wd/hub    automationName=${ANDROID_AUTOMATION_NAME}    platformName=${ANDROID_PLATFORM_NAME}
    ...    platformVersion=${ANDROID_PLATFORM_VERSION}    