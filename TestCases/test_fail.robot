*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Basic Test Case
    [Tags]    sanity
    log    Basic Test case
    #open browser    https://gmail.com    chrome
    Open Browser    https://hotmail.com    chrome
    #click element        /html/body/header/div/aside/div/nav/ul/li[2]
    Click Element    xpath:/html/body/header/div/aside/div/nav/ul/li[2]
    log to console    title
    #input text    id:identifierId    lauri.kyttala@hotmail.com
    #click element    //*[@id="identifierNext"]/div/button/span
    sleep    1
    # wait until element is visible    //*[@id="password"]/div[1]/div/div[1]/input    1 seconds
    # input text    //*[@id="password"]/div[1]/div/div[1]/input    saareni Mun
    # wait until keyword succeeds    5x    2s    click element    //*[@id="passwordNext"]/div/button/span
    #wait until element is visible    //*[@id="passwordNext"]/div/button/span

    # ${text}=    get text    //*[@id="view_container"]/div/div/div[2]/div/div[1]/div/form/span/section/div/div/div[1]/div[2]/div[2]/span
    close browser
