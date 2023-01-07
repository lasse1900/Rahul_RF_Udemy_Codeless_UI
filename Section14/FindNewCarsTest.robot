*** Settings ***
Resource            ../PageObjects/HomePage.robot
Resource            ../Resources/commons.robot
Resource            ../PageObjects/NewCarPage.robot
Resource            ../PageObjects/ToytotaCarPage.robot
Resource            ../PageObjects/CarPageCommon.robot

Test Teardown       Finish Test Case


*** Variables ***
${testsiteUrl}=     https://www.carwale.com/


*** Test Cases ***
Find New Cars Test
    lauching browser    ${testsiteUrl}    chrome
    Go To new cars page
    Go to Toyota    
    # Verify toyota car heading    Toyota Cars 
    Verify car heading    Toyota Cars
    # Go to BMW
    # Verify car heading    BMW Cars
    #Go to Kia
    #Verify car heading    Kia Cars
