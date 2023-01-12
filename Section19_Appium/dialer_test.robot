*** Settings ***

Resource        ../Resources/appium_native.robot
Test Teardown    Close Application

*** Test Cases ***
Dialer Test
    Open Native App
    Click Element    //android.widget.TextView[@content-desc="Phone"]
    # Click Element    //android.widget.RelativeLayout[@content-desc="1,Voicemail"]

    # Click Element    //android.widget.RelativeLayout[@content-desc="2 ,A,B,C"]
    # Click Element    //android.widget.RelativeLayout[@content-desc="3,D,E,F"]
    