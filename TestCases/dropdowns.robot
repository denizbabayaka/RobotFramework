*** Settings ***
Library  Selenium2Library

*** Variables ***

${browser}      chrome
${url}          http://www.practiceselenium.com/practice-form.html


*** Test Cases ***
Handling DrpDowns and Lists

    open browser  ${url}    ${browser}
    maximize browser window

    select from list by label    continents    Australia
    sleep  3
    select from list by index   continents      6

    #List box
    select from list by label   selenium_commands       Switch Commands

    select from list by label     selenium_commands       WebElement Commands
    sleep  3
    unselect from list by label   selenium_commands         Switch Commands



*** Keywords ***
