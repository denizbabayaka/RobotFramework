*** Settings ***
Library     Selenium2Library

*** Variables ***
${browser}      chrome
${url}          http://www.practiceselenium.com/practice-form.html


*** Test Cases ***
Testing Radio Buttons And Check Boxes

    open browser        ${url}      ${browser}
    maximize browser window
    set selenium speed         2seconds

    #Radio buttons name  and value

    select radio button     sex         Female
    select radio button     exp         5

    #Selecting Checkbox

    select checkbox     BlackTea
    select checkbox     RedTea
    unselect checkbox   BlackTea








*** Variables ***


