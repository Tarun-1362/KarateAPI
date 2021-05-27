Feature: UI Test demo

  Background: 
    * configure driver = { timeout: 10000, type: 'chrome', executable: 'C:/Program Files/Google/Chrome/Application/chrome.exe' }

  Scenario: abc
    Given driver 'https://opensource-demo.orangehrmlive.com/'
    And driver.maximize()
    And delay(2000)
    #And script("window.open('https://google.com')")
    #And delay(2000)
    #And switchPage(1)
    And delay(2000)
    And driver.close()
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
    And delay(3000)
    And driver.refresh()
    And delay(3000)
    And driver.reload()
    And delay(3000)
    And screenshot()
    And delay(3000)
    And def sessionId = driver.sessionId
    And print sessionId
    And driver.close()
    And driver.quit()
    #And def pos = position('input[name="q"]')
    #And print pos
    #And input("input[name='q']", 'abcd')
    #When click("input[name='btnK']")
    #Then match driver.title == 'abcd - Google Search'
