*** Settings ***
Library         SeleniumLibrary
Resource        Resources/commons.robot
Variables       Resources/locators.py
#Test teardown

*** Keywords ***
Ending the Test
    Close Browser

*** Test Cases ***
Handling mouse over
    lauching browser    https://www.way2automation.com/    chrome
    Mouse Over    xpath://*[@id="menu-item-27580"]/a/span[2]
    Click Link    Lifetime Membership
    Sleep    2
    

