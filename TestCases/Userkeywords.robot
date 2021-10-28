*** Settings ***
Library     Selenium2Library
Resource    ../Resources/resources.robot    #this comes from Resources file which has got user defined keyword



*** Variables ***

${url}    https://opensource-demo.orangehrmlive.com/
${browser}      chrome


*** Test Cases ***
TC1
   #launchBrowser  comes from resource.robot
   ${PageTitle}=   launchBrowser     ${url}      ${browser}
   log to console     ${PageTitle}
   log                ${PageTitle}
   input text       id:txtUsername    Admin
   input text       id:txtPassword    admin123


