Feature: Get user details

  Background: 
    * def result = call read('classpath:tests/GetUserID.feature') {name : "John"}
    * def userid = result.response.id
    * print 'user id is : '+userid

  # A simple Get API Scenario
  Scenario: Get demo 1
    Given url 'https://reqres.in/api/users/'+userid
    When method GET
    Then status 200
    And print response
