*** Settings ***
Library        SeleniumLibrary
Library    Easter

Resource    Resources/commons.robot
Variables    Resources/locators.py

*** Variables ***


*** Test Cases ***


Registration form test
    Filling Registration form
    click link    link:ENTER TO THE TESTING WEBSITE
    click element    xpath://*[@id="wrapper"]/div/div/div[5]/ul/li/a/figure
    @{windowHandles}=    get window handles
    log to console    ${windowHandles}
    switch window    ${windowHandles}[1]
    input text    name:name    Lasse
    Input Text    xpath://*[@id="register_form"]/fieldset[1]/p[2]/input    Testaaja
    Click Element    xpath://*[@id="register_form"]/fieldset[2]/div/label[1]/input
    # Click Element    xpath://*[@id="register_form"]/fieldset[3]/div/label[2]
    Select Checkbox    name:hobby
    Select From List By Label    xpath://*[@id="register_form"]/fieldset[4]/select    India
    Select From List By Label    xpath://*[@id="register_form"]/fieldset[5]/div[1]/select    1
    
    Select From List By Label    xpath://*[@id="register_form"]/fieldset[5]/div[2]/select    1
    Select From List By Label    xpath://*[@id="register_form"]/fieldset[5]/div[3]/select    2014
    Input Text    xpath://*[@id="register_form"]/fieldset[6]/input    0500-23238788
    Input Text    xpath://*[@id="register_form"]/fieldset[7]/input    lasse
    Input Text    xpath://*[@id="register_form"]/fieldset[8]/input    lasse@gmail.com
    Choose File    xpath://*[@id="register_form"]/fieldset[9]/input    //Users//laurikyttala//Documents//image01.png
    Input Text    xpath://*[@id="register_form"]/fieldset[10]/textarea    testi text
    Sleep    2
    Input Text    xpath://*[@id="register_form"]/fieldset[11]/input    Password1234
    Input Text    xpath://*[@id="register_form"]/fieldset[12]/input    Password1234
    Click Button    xpath://*[@id="register_form"]/fieldset[13]/input
    Sleep    1
    close window
    switch window    ${windowHandles}[0]
    close window
    Finish Test Case
