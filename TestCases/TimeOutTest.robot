*** Settings ***
Library  Selenium2Library


*** Test Cases ***
RegTest

    open browser    http://demowebshop.tricentis.com/register   chrome
    maximize browser window
    set selenium timeout     6seconds
    wait until page contains  Registera

    select radio button     Gender        M
    input text              name:FirstName      David
    input text              name:LastName       John
    input text              name:Email          deniz@gmail.com
    input text              name:Password       davidjohn
    input text              name:ConfirmPassword  davidjohn



