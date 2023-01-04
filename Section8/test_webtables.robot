*** Settings ***
Library         SeleniumLibrary
# Library    XML
Resource        Resources/commons.robot
Variables       Resources/locators.py
#Test Teardown    Ending the test


*** Test Cases ***
Handling WebTables
    lauching browser    https://imsports.rediff.com/score/in_asa_1081672.html    chrome
    @{rows}=    Get Webelements    xpath://*[@id="bat-board"]//tr
    # Get Element Count    locator - Not capable here !
    ${rowCount}=    Get Length    ${rows}
    @{columns}=    Get WebElements    xpath://*[@id="bat-board"]//tr[1]/td
    ${colCount}=    Get Length    ${columns}

    Log To Console    Total rows are ${rowCount} and total columns are ${colCount}

    FOR    ${i}    IN    @{rows}
        ${text}=    Get Text    ${i}
        Log To Console    ${text}
    END

    Table Should Contain    xpath://*[@id="bat-board"]    Suranga Lakmal
    Table Row Should Contain    xpath://*[@id="bat-board"]//tr    3    b Shami
    Table Column Should Contain    xpath://*[@id="bat-board"]//tr[1]/td    7    133.33


*** Keywords ***
Ending the test
    close browser
