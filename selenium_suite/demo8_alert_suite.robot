*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    Path      C:\\Users\\Hiiii\\Desktop\\LTTS\\Drivers
    Open Browser    url=https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm  browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    xpath=//img[(@alt='Go')]
    ${alert_text}   Handle Alert    action=ACCEPT

    Log To Console    ${alert_text}
    Log    ${alert_text}

