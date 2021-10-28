*** Settings ***
Library     Selenium2Library
#Resources keyword connects to the Resorces1.robot file and
Resource    ../Resources/Resources2.robot





*** Variables ***
${Browser}      Chrome
${URL}      http://www.thetestingworld.com/testings

*** Test Cases ***
Robot First Test Case
  ${Res}=   Start Browser and Maximize  ${URL}  ${Browser}
  log  ${Res}
  input text    name:fld_username   ${Res}
