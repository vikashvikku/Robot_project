*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Library    XML

*** Test Cases ***
TC1
    Append To Environment Variable    Path      C:\\Users\\Hiiii\\Desktop\\LTTS\\Drivers
    Open Browser    url=https://www.salesforce.com/in/form/signup/freetrial-sales/  browser=chrome
    Maximize Browser Window
    Input Text    locator=name=UserFirstName    text=John
    Input Text    name=UserLastName    Wick
    Input Text    name=UserEmail    john@gmail.com
    Select From List By Label    name=UserTitle     IT Manager
    Input Text    name=CompanyName    LTTS
    Select From List By Label    name=CompanyEmployees  101 - 500 employees
#    Input Text    name=UserPhone    999999999
    Click Element    xpath=//div[@class='checkbox-ui']
    Click Element    name=start my free trial
    Element Text Should Be    locator=xpath=//span[contains(@id,'UserPhone')]   expected=Enter a valid phone number




