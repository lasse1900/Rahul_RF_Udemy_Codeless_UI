*** Settings ***
 
Documentation    Learning Try and Except - Exception Handling in RF
Library    SeleniumLibrary

*** Test Cases ***
 
Try / Except - Basic Syntax
    TRY
        Log to console    Hello World
        #Fail
        Log To Console    Doing something
    EXCEPT
        log to console    Inside Except Block
    END

TRY / EXCEPT - with Message to be reported
    TRY
        Log to console    Hello World
        #Fail    ERROR OCCURRED
        Log To Console    Doing something
    EXCEPT
        log to console    Inside Except Block
    END

TRY / EXCEPT / ELSE / FINALLY - with Message to be reported
    TRY
        Log to console    Hello World
        Fail    ERROR OCCURRED
        Log To Console    Doing something
    EXCEPT
        log to console    Inside Except Block
    ELSE 
        Log To Console    No errors in the test case
    FINALLY 
        Log To Console    This message is printed always
    END

Selenium Intgration test
    TRY
        Open Browser    http://gmail.com    chrome
        Input Text    id:identifierId    trainer@gmail.com
        Close Browser
    EXCEPT
        Close Browser
        Fail
    END
