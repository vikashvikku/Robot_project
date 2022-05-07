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
#    Click Element    xpath=//div[(@class,'btn btn-primary btn-add')]
    Select Frame    xpath=//iframe[(@name='msg')]
    Click Element    partial link=Add New
    Select From List By Label    id=form_note_type      Pharmacy
    Select From List By Label    id=form_message_status     New
    Select From List By Index    id=users   1
    Input Text    id=note    Hello
    Click Element    id=newnote
    Element Should Contain    id=error_reply_to    expected=Please choose a patient
    Unselect Frame
    Close Browser



