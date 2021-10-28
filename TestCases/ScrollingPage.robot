*** Settings ***
Library    Selenium2Library


*** Test Cases ***
ScrollingTest

    open browser       https://www.countries-ofthe-world.com/flags-of-the-world.html     chrome
    #execute javascript      window.scrollTo(0,1500)   #this code comes from javaScript
    #scroll element into view     xpath://*[@id="content"]/div[2]/div[2]/table[1]/tbody/tr[86]/td[1]/img
    execute javascript      window.scrollTo(0,document.body.scrollHeight)

     sleep  2
     execute javascript      window.scrollTo(0,-document.body.scrollHeight)