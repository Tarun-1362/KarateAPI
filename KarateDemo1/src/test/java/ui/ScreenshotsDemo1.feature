Feature: Scrnshot demo

  Background: 
    * configure afterScenario =
      """
      var info = karate.info;
      karate.log(info);
      if(info.errorMessage){
      	driver.screenshot();
      }
      """
    * configure driver = { timeout: 10000, type: 'chrome', executable: 'C:/Program Files/Google/Chrome/Application/chrome.exe' }

  Scenario: take screen shots
    Given driver 'https://opensource-demo.orangehrmlive.com/'
    And delay(2000)
    And screenshot()
    And delay(1000)
    # only for chrome
    And driver.screenshotFull()
    #* screenshot()
    #* delay(1000).screenshot()
    #* screenshot('#btnLogin')
    #* screenshot(true)
    And click('#123')
