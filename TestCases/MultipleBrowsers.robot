*** Settings ***
Library      Selenium2Library



*** Test Cases ***
MultipleBrowser

       open browser         https://google.com/     chrome
       maximize browser window

       sleep    2

       open browser     https://www.bing.com/      chrome
       maximize browser window

       switch browser   1
       ${title1}=     get title
       log to console     ${title1}


       switch browser    2

       ${title2}=     get title
       log to console     ${title2}

       sleep   3
       close all browsers






