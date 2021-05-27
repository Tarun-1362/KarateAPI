Feature: UI Test demo

 Background: 
    * configure driver = { timeout: 10000, type: 'chrome', executable: 'C:/Program Files/Google/Chrome/Application/chrome.exe' }
    #* configure driver = {timeout: 10000, type: 'chrome', executable: 'C:/Program Files/Google/Chrome/Application/chrome.exe'}
    #* configure driver = { type: 'geckodriver', executable: 'C:/Program Files/Mozilla Firefox/firefox.exe' }

  Scenario: abc
    Given driver 'https://opensource-demo.orangehrmlive.com/'
    And driver.maximize()
    And delay(2000)
    And driver.fullscreen()
    And delay(2000)
    And driver.minimize()
    And delay(2000)
    And driver.maximize()
     And delay(2000)
    And print driver.url
    And print driver.title
    And print driver.dimensions
    #And waitFor('{a}Forgot your password?')
    #And click('{a}Forgot your password?')
    And waitFor('{^a}Forgot')
    #And click('{^}Forgot')
    And delay(3000)
    * below('#txtUsername').find('input').input('input below')
    And delay(3000)
    
    #And def pos = position('input[name="q"]')
    #And print pos
    #And input("input[name='q']", 'abcd')
    #When click("input[name='btnK']")
    #Then match driver.title == 'abcd - Google Search'
