Feature: Quote generator

  Background: 
    * url 'https://reqres.in/api/'

  Scenario: Fetch random quote
    Given path 'users?page=2'
    When method GET
    Then status 200
    And match $ == {$.data.id:'#notnull'}
