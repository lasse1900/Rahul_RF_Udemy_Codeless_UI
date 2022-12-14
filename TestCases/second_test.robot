*** Settings ***
Library        SeleniumLibrary
Library    XML

*** Variables ***


*** Test Cases ***


Basic Test Case
    Log    Basic Test Case
    open browser        https://dance-calendar.herokuapp.com/login    chrome
    log title
    Input Text        id:username        lasse2
    Sleep    1
    Input Text    id:password        tanssija
    Click Element    //*[@id="root"]/div/div/div/div[1]/div/form/div[1]/div[3]/button
    Sleep    2
    Click Element    //*[@id="root"]/div/div/div[1]/button
    Sleep    2
    # close browser

