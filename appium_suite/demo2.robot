*** Settings ***

Library     AppiumLibrary

*** Test Cases ***
TC1
    Open Application    remote_url=http://hub-cloud.browserstack.com/wd/hub
    ...     browserstack.user=vikashkumar_7phJy4
    ...     browserstack.key=dSB8JBuG6cCc98iHQrUo
    ...     app="bs://80bc8a30dfff530813b873b7d9183a0f97b446ac"
    ...     device=Google Pixel 3
    ...     os_version=9.0
    ...     project=lt6_project
    ...     build=lt6_build
    ...     name=khanacademy test

    ${app_source}       Get Source
    Log   ${app_source}
    Click Element    xpath=//*[(@text='Deny')]

    Close Application

