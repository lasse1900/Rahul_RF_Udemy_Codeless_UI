*** Settings ***

Resource    Resources/commons.robot

*** Variables ***

*** Test Cases ***
Basic Test Case
    lauching browser    https://gmail.com    chrome
    input text    id:identifierId    trainer@way2automation.com
    click element    //*[@id="identifierNext"]/div/button/span
    wait until element is visible    //*[@id="password"]/div[1]/div/div[1]/input
    input text    //*[@id="password"]/div[1]/div/div[1]/input    asldkfsdfs
    wait until element is visible    //*[@id="passwordNext"]/div/button/span

Basic Test Case 2
    lauching browser    https://google.com    chrome



