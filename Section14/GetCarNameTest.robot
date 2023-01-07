*** Settings ***
Resource            ../PageObjects/HomePage.robot
Resource            ../Resources/commons.robot
Resource            ../PageObjects/NewCarPage.robot
Resource            ../PageObjects/ToytotaCarPage.robot
Resource            ../PageObjects/CarPageCommon.robot

Library    DataDriver    ../Resources/testdata2.xlsx    Sheet1
#Library    DataDriver    ../Resources/testdata.xlsx    sheet_name=FindNewCarTest
# This latter works when you want to use many Sheets from exel, give the name of the shee like this


Test Template    Find New Cars

Test Teardown    Finish Test Case

*** Keywords ***
Find New Cars
    [Arguments]    ${browser}    ${brandname}    ${carheading}
    lauching browser    ${testsiteurl}    ${browser}
    go to new cars page
    IF    "${brandname}" == "toyota"
        Go to Toyota
    ELSE IF     "${brandname}" == "bmw"
        Go to BMW
    ELSE IF     "${brandname}" == "kia"
        Go to Kia
    ELSE
        log to console    Invalid car selected
    END
    verify car heading    ${carheading}
    Get car name    

    sleep    2s

*** Variables ***
${testsiteurl}=    https://www.carwale.com/


*** Test Cases ***
Get Cars Name Test ${brandname}    ${browser}    ${brandname}    ${carheading}

