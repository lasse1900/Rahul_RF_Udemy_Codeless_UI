*** Settings ***

Library    RequestsLibrary

*** Variables ***
${base_URL}=    http://localhost:8080/api/users 

*** Test Cases ***
Sending GET Request 
    ${response}=    GET    ${base_URL}   expected_status=200
    Log To Console    ${response}
    Status Should Be    OK    ${response}


Sending GET Request and Response Data
    ${response}=    GET    ${base_URL}    expected_status=200
    Log To Console    ${response.json()}


Creating Session and sending GET request
    Create Session    userdetails    ${base_URL}
    ${resp_data}=    GET On Session    userdetails    ${base_URL}
    # Log To Console    ${resp_data.json()}
    Log To Console    ${resp_data.json()[0]['firstName']}
    Should Be Equal    ${resp_data.json()[1]['email']}    raman@way2automation.com


Creating Session and sending POST request
    ${body}=    Create Dictionary    email=anyuser@gmail.com    firstName=any    lastName=User
    Create Session    userdetails    ${base_URL}
    ${resp_data}=    POST On Session    userdetails    ${base_URL}    json=${body}    expected_status=201
    Log To Console    ${resp_data}

    # ${response}=    GET    ${base_URL}    expected_status=200
    # Log To Console    $${response.json()}

Creating DELETE request
    Create Session    userdetails    ${base_URL}
    DELETE On Session    userdetails    ${base_URL}/19    expected_status=200
    ${response}=    GET    ${base_URL}    expected_status=200
    Log To Console    $${response.json()}
