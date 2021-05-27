Feature: login demo

  Background: 
    * configure driver = {timeout: 10000, type: 'chrome', executable: 'C:/Program Files/Google/Chrome/Application/chrome.exe'}

  Scenario: sample login test
    * def myfunc1 =
      """
      function(){ 
     	 return ' Hellow World ...' 
      }
      """
    * def returnVal = call myfunc1
    * print ' Retruned Value is : ', returnVal
    * def myFunc =
      """
      function(){ 
      return 'Hello World...'
      }
      """
    * def returnVal = call myFunc
    * print 'Value returned is : ',returnVal
    * delay(1000)
