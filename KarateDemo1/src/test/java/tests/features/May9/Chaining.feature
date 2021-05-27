Feature: API Request Response Chaining

  # Get a value from response and chain in a request
  Scenario: API chaining demo 1
    Given url 'https://reqres.in/api/users'
    And request { "name": "Raghav", "job": "teacher"}
    When method POST
    Then status 201
    
    Given path response.id
    When method GET
    #Then status 200
    
    Given url 'https://reqres.in/api/users/2'
    And request { "name": "Raghav", "job": response.job}
    When method PUT
    Then status 200
 
		