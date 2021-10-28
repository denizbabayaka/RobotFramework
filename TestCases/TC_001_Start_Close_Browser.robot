*** Settings ***
Library         Selenium2Library


*** Variables ***
${Browser}      Chrome
${URL}      http://www.thetestingworld.com/testings


*** Test Cases ***
Robot First Test Case
    open browser    ${URL}      ${Browser}
    maximize browser window
    Enter Username Password Email   testing  testingworldindia@gmail.com    123456



*** Keywords ***
Enter Username Password Email
    [Arguments]     ${username}     ${email}    @{password}
    input text      name:fld_username       ${username}
    input text      name:fld_email          ${email}
    input text      name:fld_password       ${password}

    wa