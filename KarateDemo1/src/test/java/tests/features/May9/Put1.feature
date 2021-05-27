Feature: PUT API Request demo

  # Simple PUT scenario
  Scenario: PUT demo 1
    Given def myurl =  baseURL+'/users/2'
    And print myurl
    And url baseURL+'/users/2'
    And request { "name": "Raghav", "job": "leader"}
    When method PUT
    Then status 200
    And print response
    And print responseStatus
    Then print 'name is : ',name

  Scenario: PUT demo 1
    Given url 'https://reqres.in/api/users/2'
    And request { "name": "Raghav", "job": "leader"}
    When method PUT
    Then status 200
    And print response
    And print responseStatus
    
