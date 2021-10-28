*** Settings ***
Library  Selenium2Library

*** Test Cases ***
RegTest

    ${spead}=    get selenium speed
    log to console      ${spead}
    open browser    http://demowebshop.tricentis.com/register   chrome
    maximize browser window
    #browser will wait all the elemnt 2 secnds
    set selenium speed      2seconds

    select radio button     Gender        M

    input text              name:FirstName      David
    input text              name:LastName       John
    input text              name:Email          deniz@gmail.com
    input text              name:Password       davidjohn
    input text              name:ConfirmPassword  davidjohn
    ${spead}=    get selenium speed
    log to console      ${spead}

