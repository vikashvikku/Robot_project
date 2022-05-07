*** Variables ***
&{MY_DETAILS}   name=vikash     role=trainee    location=mysore
*** Test Cases ***
TC1
    Log To Console    ${MY_DETAILS}[name]
    Log To Console    ${MY_DETAILS}[role]