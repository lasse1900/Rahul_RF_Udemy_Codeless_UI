*** Settings ***
Library     SeleniumLibrary
Variables    locators.py

*** Variables ***


*** Keywords ***
lauching browser
    [Arguments]    ${url}    ${browserName}
    open browser    ${url}    ${browserName}
    set selenium implicit wait    10 seconds
    log title

Filling Registration form
    lauching browser    https://www.way2automation.com/way2auto_jquery/index.php    chrome
    Input Text    ${name}    Lauri
    Input Text    ${phone}    0500-2323211

    ${random}=    evaluate    random.randint(5000,999999)
    ${emailnew}=    catenate    ${random}    _2_@way2automation.com
    ${email_id}=    evaluate    '${emailnew}'.replace(' ','_')

    Input Text    ${email}    ${email_id}
    Select From List By Label    ${country}    Iceland
    Input Text    ${city}    Delhi
    Input Text    ${username}   lasseboy
    Input Text    ${password}    password1234
    Click Button    ${submitBtn}

Finish Test Case
    Log    Ending the test case
    Close Browser
