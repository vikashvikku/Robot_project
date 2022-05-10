*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem


*** Test Cases ***
TC1
    Append To Environment Variable    Path     C:\\Users\\Hiiii\\Desktop\\LTTS\\Drivers
    Open Browser   url=https://phptravels.net/hotels     browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Execute Javascript      document.querySelector('[id=checkin]').value='30-05-2022'
    Execute Javascript      document.querySelector('[id=checkout]').value='03-06-2022'
    Click Element    id=select2-hotels_city-container
    Input Text    xpath=//input[@class='select2-search__field']    Mysore
    Click Element    xpath=//li[text()='Mysore,India']
    # Press Key    none    ENTER
