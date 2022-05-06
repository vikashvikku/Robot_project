*** Settings ***
Library    DateTime
Library    OperatingSystem
*** Test Cases ***
TC1
    Log To Console      Vikash Kumar
    Log To Console      robot session
TC2
    Log To Console      Hello
TC3
    ${my_name}      Set Variable        Vks
    Log To Console  ${my_name}
    Log    ${my_name}
TC4
    ${radius}   Set Variable        10
    ${result}   Evaluate    3.14 * ${radius} * ${radius}
    Log To Console    ${result}

TC5
    ${base}    Set Variable     25
    ${height}   Set Variable    1
    ${Triangle}     Evaluate    0.5 * ${base} * ${height}
    Log To Console    ${Triangle}

TC6
    ${base1}    Set Variable     25
    ${base2}   Set Variable    2.56
    ${height1}   Set Variable    70
    ${Trapezium}     Evaluate    0.5 * ( ${base1} + ${base2} ) * ${height1}
    Log To Console    ${Trapezium}

TC7
    ${Date}     Get Current Date
    Log To Console    ${Date}
