Feature: get method demo

  Background: 
    * url 'https://reqres.in/api'

  Scenario: run api
    Given path '/users?page=2'
    When method get
    Then status 200