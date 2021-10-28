*** Settings ***
Library     Selenium2Library
#Resources keyword connects to the Resorces1.robot file and
Resource    ../Resources/Resources1.robot





*** Variables ***
${Browser}      Chrome
${URL}      http://www.thetestingworld.com/testings

*** Test Cases ***
Robot First Test Case
    Start Browser and Maximize
    input text      name:fld_username       HelloWorld
    ${Title}=   get title
    log     ${Title}

 

