*** Variables ***
${NAME}=    LasseB
${num1}=    10
${num2}=    20

*** Test Cases ***

If Block
    IF    "${NAME}" == "Lasse"
            Log To Console    Name is Lasse
    ELSE
            Log To Console    Name is not Lasse
    END


Else If Block
    IF    "${NAME}" == "Lasse"
            Log To Console    Name is Lasse
    ELSE IF    "${NAME}" == "Robbie"
                Log To Console    Name is Robbie
    ELSE
            Log To Console    Names does not match
    END

Number Comparison
    IF    ${num1} == ${num2}
        Log To Console    numbers match
    ELSE IF    ${num1} < ${num2}
        Log To Console    ${num1} is smaller than ${num2} 
    END

Or And condition
    IF    ${num1} < ${num2} or ${num1} < 9
        Log To Console    ${num1} is less than ${num2} or less than 9
    END