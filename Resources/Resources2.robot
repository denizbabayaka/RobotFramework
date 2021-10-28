*** Settings ***
Library     Selenium2Library


*** Variables ***


*** Keywords ***
Start Browser and Maximize
    [Arguments]     ${UserUrl}  ${InputBrowser}
    open browser    ${url}      ${browser}
    maximize browser window
    ${Title}=  Get Title
    [Return]    ${Title}