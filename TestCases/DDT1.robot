*** Settings ***
Library   Selenium2Library


Resource    ../Resources/login_resources.robot

Suite Setup   Open my Browser     #This line of code will be executed before Test Case
Suite Teardown   Close Browsers    #This line of code will be executed before after Test Case
Test Template   Invalid login      #This line of code will be executed numbers of times defined in the test case


*** Test Cases ***          username                  password
Right user empty pwd        admin@yourstore.com       ${EMPTY}
Right user empty pwd        admin@yourstore.com       xyz
Wrong user right pwd        adm@yourstore.com         admin
Wrong user empty pwd        adm@yourstore.com         ${EMPTY}
Wrong user wrong pwd        adm@yourstore.com         xyz





*** Keywords ***
Invalid login
   [Arguments]   ${username}   ${password}
   Input username   ${username}
   Input pwd         ${password}
   click login button
   Error message sould be visible