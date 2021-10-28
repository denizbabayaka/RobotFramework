*** Settings ***
Library     Selenium2Library

*** Test Cases ***
GetAllLinksTest

    open browser    https://opensource-demo.orangehrmlive.com/    chrome
    maximize browser window
    ${AllLinksCount}=   get element count   xpath://a
    log to console   ${AllLinksCount}


    @{LinkItems}    create list

    : FOR  ${i}   IN RANGE      1   ${AllLinksCount}
    \   ${linkText}=    get text  xpath:(//a)[${i}]
    \   log to console  ${LinkText}









