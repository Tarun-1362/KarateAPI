Feature: File Upload

  Background: 
    * configure driver = { timeout: 10000, type: 'chrome', executable: 'C:/Program Files/Google/Chrome/Application/chrome.exe' }

  Scenario: upload file test
    Given driver 'https://trytestingthis.netlify.app/index.html'
    * delay(1000)
    * scroll('#myfile')
    * delay(2000)
    * driver.inputFile('#myfile', 'classpath:data/pic1.png')
    * delay(4000)
    * driver 'https://filebin.net/'
    * delay(2000)
    * driver.inputFile('#fileField', 'classpath:data/pic1.png')
    * delay(4000)
