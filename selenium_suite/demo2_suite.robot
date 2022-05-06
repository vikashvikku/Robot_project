*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    Path      C:\\Users\\Hiiii\\Desktop\\LTTS\\Drivers
    Open Browser    url=https://www.facebook.com/  browser=chrome
    Maximize Browser Window
    Click Element    link=Create New Account
    Set Selenium Implicit Wait    30s
    Input Text    name=firstname    Vikash
    Input Text    name=lastname    Kumar
    Input Text    name=reg_email__    vikash7730@gmail.com
    Input Text    name=reg_email_confirmation__    vikash7730@gmail.com
    Input Password    Id=password_step_input    Welcome@123
    Select From List By Label    name=birthday_day  14
    Select From List By Index    name=birthday_month  11
    Select From List By Value    name=birthday_year  2000
    Select Radio Button    sex  2
    Click Element    name=websubmit
    Close Browser