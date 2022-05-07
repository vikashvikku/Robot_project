*** Settings ***
Library     SeleniumLibrary
Library    Collections
Library     Collections


*** Variables ***
# Scalar
# list:- For global, we use @{} to declare list, and to access we should use $ symbol only
# Dictionary

${MY_NAME}      Vikash Kumar
${ROLE}     Trainee
@{COLORS}   red     green   yellow

*** Test Cases ***
TC1
    Log To Console    ${MY_NAME}

TC2
    Log To Console    ${MY_NAME}
    Log To Console    ${ROLE}
    Log To Console    ${COLORS}[0]

TC3
# for local declaration of list}
    @{fruits}   Create List     apple   grapes  orange
    Log To Console    ${fruits}
    Append To List    ${fruits}     pineapple
    Log To Console    ${fruits}
    Remove From List    ${fruits}    0
    Log To Console    ${fruits}
    Insert Into List    ${fruits}    0    mango
    Log To Console    ${fruits}

TC4
    @{fruits}    Create List    apple   grapes  orange      mango
    FOR     ${i}    IN RANGE    0   4   1
        Log    ${fruits}[${i}]
        Log To Console    ${fruits}[${i}]

        END

TC5
        @{fruits}    Create List    apple   grapes  orange      mango
        FOR    ${fruit}    IN    @{fruits}
                Log    ${fruit}
                Log To Console    ${fruit}


            END