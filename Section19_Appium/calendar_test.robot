*** Settings ***

Resource        ../Resources/appium_native.robot
Test Teardown    Close Application

*** Test Cases ***
Calendar test
    Open Native App
    Click Element    //android.widget.TextView[@content-desc="Calendar"]

    