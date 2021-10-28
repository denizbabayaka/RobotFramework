*** Settings ***
Library   Selenium2Libraray


*** Variables ***
${LOGINURL}    https://admin-demo.nopcommerce.com
${BROWSER}     chrome


*** Keywords ***
Open my Browser
   open browser    ${LOGINURL}     ${BROWSER}
   maximize browser window

Close Browsers
    close all browsers

Open Login Page
    go to   ${LOGINURL}

Input username
   [Arguments]    ${username}
   input text   id:Email   ${username}

Input pwd
     [Arguments]   ${password}
     input text    id:Password    ${password}

click login button

   click element    xpath://input[@class='button-1 login-button']

click logout link

   click link    Logout

Error message sould be visible

    page should contain   Login was unsuccessful

Dashboard page should be visible
    page should contain   Dashboard






