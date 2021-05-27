Feature: UI Test demo

  Background: 
    * configure driver = { timeout: 10000, type: 'chrome', executable: 'C:/Program Files/Google/Chrome/Application/chrome.exe' }

  Scenario: abc
    Given driver 'https://opensource-demo.orangehrmlive.com/'
    And driver.maximize()
    And delay(2000)
   #And waitFor('{a}Forgot your password?')
    #And click('{a}Forgot your password?')
    #And click('{}Forgot your password?')
    And waitFor('{^a}Forgot')
    #And click('{^}Forgot')
    And delay(3000)
    * below('#txtUsername').find('input').input('input below')
    And delay(3000)
    And waitFor('{^a}Forgot')
    #And click('{^}Forgot')
    And delay(3000)
    * below('#txtUsername').find('input').input('input below')
    And delay(3000) 