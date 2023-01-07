*** Settings ***
Resource        ../Section8/Resources/commons.robot
Variables       ../Section8/Resources/locators.py

Library    ../Section8/Built_In/CustomLib.py
Library    DataDriver    ../Resources/testdata.xlsx    Sheet1

Test Template    Handle Any Date

*** Variables ***

*** Keywords ***
Ending the test
    close browser

Teardown
    Finish Test Case
    

Handle Any Date 
    [Arguments]    ${month}    ${date}
    lauching browser    https://www.way2automation.com/way2auto_jquery/datepicker.php#load_box    chrome
    Select Frame    xpath://*[@id="example-1-tab-1"]/div/iframe
    Click Element    xpath://*[@id="datepicker"]
    #click element    css:.ui-state-default.ui-state-highlight
    print console
    print title
    select month    //*[@id="ui-datepicker-div"]/div/div/span[1]    ${month}    ${date}
    Element Text Should Be    //*[@id="ui-datepicker-div"]/div/div/span[1]     ${month}

*** Test Cases ***
Handling Calendar    ${month}    ${date}
    [Teardown]    Teardown

