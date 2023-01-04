*** Settings ***
Resource        Resources/commons.robot
Variables       Resources/locators.py

Library    Built_In/CustomLib.py


*** Keywords ***
Ending the test
    close browser


Test Teardown    Ending the test


*** Test Cases ***
Handling Calendar
    lauching browser    https://www.way2automation.com/way2auto_jquery/datepicker.php#load_box    chrome
    Select Frame    xpath://*[@id="example-1-tab-1"]/div/iframe
    Click Element    xpath://*[@id="datepicker"]
    Sleep    1
    click element    css:.ui-state-default.ui-state-highlight
    print console
    print title
    select month    //*[@id="ui-datepicker-div"]/div/div/span[1]    January    14

    Sleep    2

