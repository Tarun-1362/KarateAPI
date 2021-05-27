Feature: Locators demo

 Background: 
    * configure driver = { timeout: 10000, type: 'chrome', executable: 'C:/Program Files/Google/Chrome/Application/chrome.exe' }


  Scenario: Access elements using wild cards and friendly locators
    Given driver 'https://opensource-demo.orangehrmlive.com/'
    And waitFor('{a}Forgot your password?')
    And delay(2000)
    #And click('{a}Forgot your password?')
    #And click('{*}Forgot your password?')
    #And click('{^*}Forgot')
    * below('#txtUsername').find('input').input('1234567')
    And delay(3000)
    * above('#txtPassword').find('input').input('1234567')
    And delay(2000)
