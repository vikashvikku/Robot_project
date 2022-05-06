*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Library    XML

*** Test Cases ***
TC1
    Append To Environment Variable    Path      C:\\Users\\Hiiii\\Desktop\\LTTS\\Drivers
    Open Browser    url=https://www.goto.com/meeting/  browser=chrome
    Maximize Browser Window
    Click Element    id=truste-consent-button
    Click Element    link=Try Free
    Input Text    Id=first-name    John
    Input Text    Id=last-name    wick
    Input Text    Id=login__email    john@gmail.com
    Input Password    Id=login__password    welcome123
    Select From List By Label    id=CompanySize     10 - 99
    Click Element   xpath=//button[text()='Start My Trial']



