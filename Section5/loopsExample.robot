*** Variables ***
@{city}=    Helsinki    Vantaa    Espoo

*** Test Cases ***
For Loop
    FOR    ${num}    IN RANGE    5
        Log To Console    ${num+1}
    END

For Loop in RANGE
    FOR    ${num}    IN RANGE    1    10    2
        Log To Console    ${num}
        
    END

For Loop in RANGE
    FOR    ${num}    IN RANGE    1    10
        Log To Console    ${num}
        Exit For Loop If    ${num} == 4
        
    END

For loop in list of elements
    FOR    ${i}    IN   @{city}
        Log To Console    ${i}
        Exit For Loop If    '${i}' == 'Vantaa'
    END

