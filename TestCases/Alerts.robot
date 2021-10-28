*** Settings ***
Library   Selenium2Library

*** Test Cases ***
HandlingAlerts

  open browser      http://testautomationpractice.blogspot.com/   chrome
  click element     xpath://button[contains(text(),'Click Me')]   #opens alert
  sleep     3
  #handle alert      accept
  #handle alert   dismiss
  #handle alert      Leave
  #alert should be present   Press a button!
  alert should not be present     Press a button!

  should be true






