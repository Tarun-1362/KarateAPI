Feature: UI Test demo

  Background: 
    * configure driver = { type: 'chrome' }

  Scenario: test 1
    Given driver 'https://google.com'
    And input('input[name=q]', 'Automation Step by Step')
    When click('input[name=btn1]')
    Then waitForUrl('https://www.google.com/search?q=Automation+Step+by+Step&sxsrf=ALeKk01N8k7g1DJwtIu8KJ1FhRxAyFra5g%3A1621657537691&source=hp&ei=wYeoYIyVJ7LSz7sPjKWPqAI&iflsig=AINFCbYAAAAAYKiV0ZITkM4hjfDKfbbhZGll21bGOvN_&oq=Automation+Step+by+Step&gs_lcp=Cgdnd3Mtd2l6EAMyBwgjEOoCECcyBwgjEOoCECcyBwgjEOoCECcyBwgjEOoCECcyBwgjEOoCECcyBwgjEOoCECcyBwgjEOoCECcyBwgjEOoCECcyBwgjEOoCECcyBwgjEOoCECdQ4eURWOHlEWDp5RFoAXAAeACAAQCIAQCSAQCYAQCgAQKgAQGqAQdnd3Mtd2l6sAEK&sclient=gws-wiz&ved=0ahUKEwjM-emLudzwAhUy6XMBHYzSAyUQ4dUDCAc&uact=5')

  Scenario: test 2
    * url 'https://google.com'
    * path 'session'
    * request {"capabilities":{"browserName":"firefox"}}
    * method post
