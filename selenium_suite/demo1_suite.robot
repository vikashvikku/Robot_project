*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    Path      C:\\Users\\Hiiii\\Desktop\\LTTS\\Drivers
    Open Browser    url=https://www.facebook.com/  browser=chrome
    Input Text    Id=email    lt6@gmail.com
    Input Password    Id=pass    welcome123
    Click Element    name=login
