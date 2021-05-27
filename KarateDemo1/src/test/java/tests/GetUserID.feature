Feature: Demo Post

  # Simple Post scenario
  Scenario: Post demo 1
    Given url 'https://reqres.in/api/users'
    And request { "name": '#(name)', "job": "teacher"}
    When method post
    Then status 201
    And print response
    And print response.id
    * def userID = response.id
