*** Settings ***
Library    OperatingSystem
*** Test Cases ***
TC1
    Create Directory    path=F:\\line\\Mine\Demo1
    Create File    path=F:\\Hello.txt
    
TC2
    Remove File    path=F:\\Hello.txt
    
TC3
    Remove Directory    path=F:\\GO
    Remove Directory    path=F:\\line\\Mine\Demo1

