*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    Path      C:\\Users\\Hiiii\\Desktop\\LTTS\\Drivers
    Open Browser    url=https://demo.openemr.io/b/openemr  browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Input Text    id=authUser    admin
    Input Password    id=clearPass    pass
    Select From List By Label    name=languageChoice    English (Indian)
    Click Element    id=login-button
    Switch Window   OpenEMR
    # Select Frame    xpath=//div[(@text()='Messages')]
    Click Element    xpath=//div[(text()='Messages')]
    Click Element    xpath=//div[(@class,'btn btn-primary btn-add')]

