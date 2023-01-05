*** Settings ***

Resource    ../PageObjects/HomePage.robot
Resource    ../Resources/commons.robot
Test Teardown    Finish Test Case

*** Variables ***
${testsiteUrl}=    https://www.carwale.com/


*** Test Cases ***
Find New Cars Test 
    lauching browser    ${testsiteUrl}    chrome
    Go To new cars page
    Sleep    3


    