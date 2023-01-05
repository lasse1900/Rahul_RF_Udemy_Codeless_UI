*** Settings ***
Library         SeleniumLibrary

*** Test Cases ***
Go to google page
    log     test case 1

Open page
    Open Browser  https://www.google.com  chrome
    log    title
    sleep    3
