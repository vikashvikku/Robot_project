*** Settings ***

Library     AppiumLibrary
Test Teardown   Close Application

*** Test Cases ***
TC1
    Open Application    remote_url=http://hub-cloud.browserstack.com/wd/hub
    ...     browserstack.user=vikashkumar_7phJy4
    ...     browserstack.key=dSB8JBuG6cCc98iHQrUo
    ...     app="bs://15459b197aa3bdc71b9a84d61e7d18c62f206f55"
    ...     device=Google Pixel 3
    ...     os_version=9.0
    ...     project=lt6_project
    ...     build=lt6_build
    ...     name=khanacademy test

    ${app_source}       Get Source
    Log   ${app_source}

    Wait Until Page Contains Element    xpath=//*[(@text='Dismiss')]      50s
    Click Element    xpath=//*[(@text='Dismiss')]
    Wait Until Page Contains Element    xpath=//*[(@text='Sign in')]      50s
    Click Element    xpath=//*[@text='Sign in']
    Wait Until Page Contains Element    xpath=//*[(@text='Sign in')]      50s
    Click Element    xpath=//*[@text='Sign in']
    Input Text    xpath=//*[(@text='Enter an e-mail address or username')]      Vikash@gmail.com
    Input Password    xpath=//*[(@text='Password')]    welcome123
    Click Element    xpath=(//*[@text='Sign in'])[2]
    
    Element Should Contain Text    xpath=//*[@text='There was an issue signing in']      There was an issue signing in


    # Close Application



