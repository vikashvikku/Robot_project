*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
     Append To Environment Variable    Path     C:\\Users\\Hiiii\\Desktop\\LTTS\\Drivers
     Open Browser   url=https://smallpdf.com/pdf-to-word     browser=chrome
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Click Element    xpath=//span[text()='Got it']
     #Click Element    xpath=//span[text()='From device']
     Choose File    xpath=//input[@type='file']    C:${/}Users\\\Hiiii\\Desktop\\LTTS\\New
     ${current_title}   Get Title
     Log To Console   ${current_title}
     ${current_location}        Get Location
     Log To Console    ${current_location}
     ${html_source}     Get Source