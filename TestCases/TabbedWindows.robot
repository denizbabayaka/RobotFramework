*** Settings ***
Library   Selenium2Library




*** Test Cases ***
TabbedWindowsTest

  open browser          http://demo.automationtesting.in/Windows.html    chrome
  click element         xpath://*[@id="Tabbed"]/a/button
  select window         title=SeleniumHQ Browser Automation
  click element         xpath://*[@id="navbar"]/a[1]
  sleep  3
  close all browsers






