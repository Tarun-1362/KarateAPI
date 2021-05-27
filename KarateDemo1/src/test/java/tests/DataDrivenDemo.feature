Feature: Demo data driven testing

  Background: 
    * url 'https://reqres.in/api'

  Scenario Outline: Post demo
    Given path '/users'
    And request { "name": <firstname>, "job": <job>}
    When method POST
    Then status 201
    And print response
    And print response.name
    And match response.name == <firstname>

    Examples: 
    	| read('classpath:data/data1.csv')	|
      #| firstname | job     |
      #| "Raghav"  | teacher |
      #| 'Joe'     | manager |
