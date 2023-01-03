*** Settings ***
Library        SeleniumLibrary

Resource    Resources/commons.robot
Variables    Resources/locators.py
Suite Teardown    Ending the test

*** Variables ***

*** Keywords ***
Ending the test
    Close Browser


*** Test Cases ***

    
Handling dropboxes
    lauching browser    http://www.tizag.com/htmlT/htmlcheckboxes.php    chrome
    Page Should Contain Checkbox    xpath:/html/body/table[3]/tbody/tr[1]/td[2]/table/tbody/tr/td/div[4]/input[1]
    # Select Checkbox    xpath:/html/body/table[3]/tbody/tr[1]/td[2]/table/tbody/tr/td/div[4]/input[1]
    # Select Checkbox    xpath:/html/body/table[3]/tbody/tr[1]/td[2]/table/tbody/tr/td/div[4]/input[2]
    # Select Checkbox    xpath:/html/body/table[3]/tbody/tr[1]/td[2]/table/tbody/tr/td/div[4]/input[3]
    # Select Checkbox    xpath:/html/body/table[3]/tbody/tr[1]/td[2]/table/tbody/tr/td/div[4]/input[4]

    # Select Checkbox    xpath://div[4]/input[1]
    # Select Checkbox    xpath://div[4]/input[2]
    # Select Checkbox    xpath://div[4]/input[3]
    # Select Checkbox    xpath://div[4]/input[4]

    #Select Checkbox    xpath:/html/body/table[3]/tbody/tr[1]/td[2]/table/tbody/tr/td/div[4]/input[1]
    #Checkbox Should Not Be Selected    xpath://div[4]/input[4]
    #Sleep    1
    #Unselect Checkbox    xpath:/html/body/table[3]/tbody/tr[1]/td[2]/table/tbody/tr/td/div[4]/input[1]

    @{checkboxes}=    Get WebElements    xpath://td/div[4]//input
    ${count}=    Get Length    ${checkboxes}
    Log To Console    Total checkboxes are ${count}

    FOR    ${checkbox}    IN    @{checkboxes}
        Select Checkbox    ${checkbox}
    END

    Unselect Checkbox    xpath://div[4]/input[4]

    Checkbox Should Not Be Selected    xpath://div[4]/input[4]
    Sleep    2