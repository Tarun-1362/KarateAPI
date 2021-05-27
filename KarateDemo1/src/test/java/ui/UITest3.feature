Feature: UI Test demo

  #Background:
  #* configure driver = { timeout: 10000, type: 'firefox' }
  #* configure driver = { timeout: 10000, type: 'chrome', executable='C:/Program Files/Google/Chrome/Application/chrome.exe' }
  #
  #Scenario: UI test 1
  #Given driver 'https://google.com'
  #And waitFor("input[title='Search']")
  #And input("input[title='Search']",'Automation Step by Step')
  #And waitFor("input[name='btnK']")
  #When click("input[name='btnK']")
  #Then waitFor("//*[contains(text(), 'Automation Step by Step: ')]")
  #And match driver.title == 'Automation Step by Step - Google Search'
  Background: 
    #* configure driver = { timeout: 10000, type: 'chrome', executable: 'C:/Program Files/Google/Chrome/Application/chrome.exe' }
    #* configure driver = {timeout: 10000, type: 'chrome', executable: 'C:/Program Files/Google/Chrome/Application/chrome.exe'}
    * configure driver = { type: 'geckodriver', executable: 'C:/Program Files/Mozilla Firefox/firefox.exe' }

  Scenario: abc
    Given driver 'https://google.com'
    And input("input[name='q']", 'abcd')
    When click("input[name='btnK']")
    Then match driver.title == 'abcd - Google Search'
