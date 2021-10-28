*** Settings ***
Library     Selenium2Library


*** Variables ***
${URL}      http://www.thetestingworld.com/testing
${Browser}  Chrome

*** Keywords ***
Start Browser and Maximize
    open browser    ${url}      ${browser}
    maximize browser window
    ${Title}=  Get Title
    [Return]    ${Title}



