*** Settings ***
Resource        Resources/commons.robot
Variables       Resources/locators.py

Library    Built_In/CustomLib.py
# you have to set your pythonpath within VSC
# please see: -	https://stackoverflow.com/questions/71931370/robotframework-some-libraries-are-not-imported/72324894#72324894


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

