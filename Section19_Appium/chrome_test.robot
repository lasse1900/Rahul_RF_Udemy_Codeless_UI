*** Settings ***

Library    AppiumLibrary



*** Test Cases ***
Launch Browser
    Open Application    http://127.0.0.1:4723/wd/hub    automationName=UIAutomator2    platformName=Android
    ...    platformVersion=11    browserName=Chrome
    go to url    http://google.com
    # Input Text    //*[@name='q']    Hello Robot
    go to url    http://www.iltasanomat.fi
    Sleep    2
    Close Application