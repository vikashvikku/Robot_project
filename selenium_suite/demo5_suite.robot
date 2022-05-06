*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Library    XML

*** Test Cases ***
TC1
    Append To Environment Variable    Path      C:\\Users\\Hiiii\\Desktop\\LTTS\\Drivers
    Open Browser    url=https://www.medibuddy.in/  browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    id=wzrk-cancel
    Click Element    link=For Employer
    Switch Window   MediBuddy LaunchPad
    Input Text    id=getInTouchName    Vikash
    Input Text    id=getInTouchEmail    vikash7730@gmail.com
    Input Text    id=getInTouchMobile    99009
    Input Text    id=getInTouchDesignation    Intern
    Input Text    id=getInTouchEmpCount    24
    Element Text Should Be    locator=xpath=//div[contains(@class,'text-red-600 ml-2')]   expected=Mobile Number should be 10 digits
    Click Element    xpath=//button[(@type='submit')]
    Close Window
    Close Browser
