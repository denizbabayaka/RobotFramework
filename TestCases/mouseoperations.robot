*** Settings ***
Library   Selenium2Library


*** Test Cases ***
MouseActions

   open browser         http://swisnl.github.io/jQuery-contextMenu/demo.html     chrome
   #maximize browser window
   # this code makes right click
   #open context menu         xpath://span[@class='context-menu-one btn btn-neutral']

   #Double click action

   go to       https://testautomationpractice.blogspot.com/
   maximize browser window
   double click element     xpath://button[contains(text(),'Copy Text')]

   #Drag and Drop

   go to      https://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
   maximize browser window
   drag and drop        id:box6     id:box106
   sleep  3
   close browser
