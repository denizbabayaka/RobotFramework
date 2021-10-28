*** Settings ***
Library    Selenium2Library
Resource   ../Resources/login_resources.robot
Library    DataDriver     ../TestData/Login1Data.xlsx      sheet_name=Sheet1


Suite Setup      Open my Browser
Suite Teardown   Close Browsers
Test Template    Invalid login

*** Test Cases ***
LoginTestWithExcel using ${username} and ${password}



*** Keywords ***
Invalid login
    [Arguments]    ${username}     ${password}
    Input username    ${username}
    Input pwd         ${password}
    click login button
    Error message sould be visible


