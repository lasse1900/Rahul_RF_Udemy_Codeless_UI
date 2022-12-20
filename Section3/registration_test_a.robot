*** Settings ***
Library        SeleniumLibrary

Resource    Resources/commons.robot

*** Variables ***



*** Test Cases ***

Filling Registration Form
    lauching browser    https://www.way2automation.com/way2auto_jquery/index.php    chrome
    Input Text    name:name    Lauri
    Input Text    name:phone    0500-2323211
    Input Text    name:email    trainer@way2automation.com
    Select From List By Label    name:country    Iceland
    Input Text    name:city    Delhi
    Input Text    xpath://*[@id="load_form"]/fieldset[6]/input    lasseboy
    Input Text    xpath://*[@id="load_form"]/fieldset[7]/input    password1234
    Click Button    xpath:(//*[@id="load_form"]/div[1]/div[2]/input)[2]
    Finish Test Case

