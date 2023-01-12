*** Settings ***

Resource        ../Resources/appium_native.robot
Test Teardown    Close Application

*** Test Cases ***
Whatsup test
    Open Native App
    Click Element    //android.widget.TextView[@content-desc="Phone"]
    # Click Element    //android.widget.RelativeLayout[@content-desc="1,Voicemail"]/android.widget.TextView
    Click Element    /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.TextView

    # Click Element    //android.widget.RelativeLayout[@content-desc="Hash"]/android.widget.TextView
    # Click Element    //android.widget.FrameLayout[@content-desc="Call button"]/android.widget.ImageView
    # Click Element    //android.widget.RelativeLayout[@content-desc="1,Voicemail"]

    # Click Element    //android.widget.RelativeLayout[@content-desc="2 ,A,B,C"]
    # Click Element    //android.widget.RelativeLayout[@content-desc="3,D,E,F"]
    