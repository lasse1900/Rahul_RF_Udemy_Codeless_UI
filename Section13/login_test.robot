*** Settings ***
Library        SeleniumLibrary

Suite Setup    Log To Console    Create DB connention
Suite Teardown    Log To Console    Close DB connection
Test Setup    Log To Console    Launching Browser
Test Teardown    Log To Console    Closing Browser


*** Variables ***


*** Test Cases ***
Login Test
    Log To Console    Executing login test

User reg Test
    Log To Console    Executing User reg tests

Image Upload Test
    Log To Console    Executing Image Upload test
    
