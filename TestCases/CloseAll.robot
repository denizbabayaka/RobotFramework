*** Settings ***
Library  Selenium2Library

*** Test Cases ***
MyTestCase

  open browser     http://demowebshop.tricentis.com/register   chrome
  maximize browser window

  open browser     http://google.com/   chrome

  #close browser
  close all browsers
