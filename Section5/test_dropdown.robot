*** Settings ***
Library        SeleniumLibrary
Library    XML

Resource    Resources/commons.robot
Variables    Resources/locators.py

*** Variables ***


*** Test Cases ***


    
Handling dropdown list
    lauching browser    https://www.wikipedia.org/   chrome
    # Select From List By Label    name:language    English
    # Select From List By Index    name:language    3
    Select From List By Value    name:language    pl
    # @{elements}=    Get WebElements    //option
    @{elements}=    Get WebElements    xpath://select[@id='searchLanguage']//option
    ${count}=    Get Length    ${elements}
    Log To Console    Total values are ${count}
    FOR    ${element}    IN    @{elements}
        # ${text}=    get text    ${element}
        ${text}=    SeleniumLibrary.Get Element Attribute    ${element}    lang
        Log To Console    ${text}
    END
    Sleep    2

Handling Links
    ${links}=    Get WebElements    xpath://a
    ${linkCount}=    Get Length    ${links}
    Log To Console    total links are ${linkCount}

Handling Links Part2
    ${links}=    Get WebElements    //*[@id="www-wikipedia-org"]/div[11]/div[3]//a
    ${linkCount}=    Get Length    ${links}
    Log To Console    total links are ${linkCount}
    @{childelements}=    Get WebElements    //*[@id="www-wikipedia-org"]/div[11]/div[3]//a
    ${childlinkscount}=    Get Length    ${childelements}
    Log To Console    Total links in the section are: ${childlinkscount}

    FOR    ${link}    IN    @{childelements}
        ${text}=    get text    ${link}
        # ${text}=    SeleniumLibrary.Get Element Attribute    ${element}    lang
        Log To Console    ${text}
    END

    FOR    ${link}    IN    @{childelements}
        ${text}=    SeleniumLibrary.Get Element Attribute    ${link}    href
        Log To Console    ${text}
    END