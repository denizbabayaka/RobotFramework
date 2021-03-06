*** Settings ***
Library   Selenium2Library

*** Test Cases ***
Testing Frames

   open browser     https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html  chrome
   maximize browser window
   select frame     packageListFrame   #id name xpath
   click link       org.openqa.selenium
   unselect frame

   sleep  2

   select frame     packageFrame
   click link       WebDriver
   unselect frame

   sleep  2

   select frame     classFrame
   click link       Help
   unselect frame

   close browser






