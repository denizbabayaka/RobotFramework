*** Settings ***
Library   Selenium2Library


*** Test Cases ***
LoginTC

  open browser     https://opensource-demo.orangehrmlive.com/   chrome
  input text       id:txtUsername    Admin
  input text       id:txtPassword    admin123
  #capture element screenshot      xpath://*[@id="divLogo"]/img          C:/Users/deniz/PycharmProjects/RobotFramework/Logo.png
  #capture page screenshot      C:/Users/deniz/PycharmProjects/RobotFramework/LoginTC.png

  capture element screenshot    xpath://*[@id="divLogo"]/img     Logo.png
  capture page screenshot       LoginTC.png
