*** Settings ***
Library    SeleniumLibrary
Variables    ../Resources/locators.py

*** Keywords ***
Go to Toyota
    Click Element    ${toyotacar_xpath}

Go to Kia
    Click Element    ${kiacar_xpath}

Go to BMW
    Click Element    ${bmwcar_xpath}

Go to Maruti
    Click Element    ${maruticar_xpath}

Go to Tata
    Click Element    ${tatacar_xpath}

