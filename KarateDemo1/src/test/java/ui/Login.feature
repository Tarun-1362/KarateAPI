Feature: login demo

  Background: 
    * configure driver = {timeout: 10000, type: 'chrome', executable: 'C:/Program Files/Google/Chrome/Application/chrome.exe'}

  Scenario: sample login test
    Given driver 'https://opensource-demo.orangehrmlive.com/'
    And delay(1000)
    And waitFor('#txtUsername').input('Admin')
    And delay(1000)
    And clear('#txtUsername')
    And delay(1000)
    And input('#txtUsername', 'Admin')
    And delay(1000)
    And waitFor('#txtPassword').input('admin123')
    And delay(1000)
    #* match text('#btnLogin') == 'Login'
    #And waitFor('#btnLogin').click()
    #When submit().click('#btnLogin')
    * scroll('#btnLogin').click()
    And delay(1000)
    And exists('#Subscriber_link')
    * match text('#menu_recruitment_viewRecruitmentModule') == 'Recruitment'
