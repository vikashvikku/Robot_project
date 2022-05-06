*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    Path      C:\\Users\\Hiiii\\Desktop\\LTTS\\Drivers
    Open Browser    url=https://netbanking.hdfcbank.com/netbanking/  browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Select Frame    xpath=//frame[(@name='login_page')]
    Input Text    name=fldLoginUserId    test123
    Click Element    link=CONTINUE
    Unselect Frame



