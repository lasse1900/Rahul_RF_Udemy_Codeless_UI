*** Settings ***
Library        SeleniumLibrary
Library        XML

*** Variables ***


*** Test Cases ***


Basic Test Case
    Log    Basic Test Case
    open browser        https://dance-calendar.herokuapp.com/login    chrome
    log title
    ${text}=        Get Text    //*[@id="root"]/div/div/div/div[1]/div/h2/div/i
    Input Text        id:username        lasse2
    Set Selenium Implicit Wait    5
    
    Input Text    id:password        tanssija
    Click Element    //*[@id="root"]/div/div/div/div[1]/div/form/div[1]/div[3]/button
    Set Selenium Implicit Wait    5
    Click Element    //*[@id="root"]/div/div/div[1]/a[3]
    sleep    2
    Click Element    //*[@id="root"]/div/div/div[1]/a[5]
    sleep    2
    Click Element    //*[@id="root"]/div/div/div[1]/button 
    Sleep    2
    # close browser

