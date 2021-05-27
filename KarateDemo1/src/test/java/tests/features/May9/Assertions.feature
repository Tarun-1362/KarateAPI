Feature: Assertions in Karate

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    * def expectedOutput = read('Result1.json')

  Scenario: Assertions demo
    Given path '/users'
    And param page = 2
    When method GET
    # check status code
    Then status 200
    
    # check response is not null
    And match response == "#notnull"
    And match $ == "#notnull"
    And match $.data == "#notnull"
    And match response.data[0].first_name != null
    
    # Check value at specific location
    And match $.data[1].id == 8
    And match response.data[0].first_name contains 'Michael'
    And match $.data[3].last_name == 'Fields'
    
    # match-contains
    And match $.data[3] contains {"id":10}
    And match response.data[*].id contains [7, 8, 9, 10, 11, 12]
    And match response.data[*].id contains [10, 12, 11, 7]
    And match response.data[*].id contains [7, 9, 8, ]
    And match response.data[*].email contains 'george.edwards@reqres.in'
    And match response.data[*].first_name contains ['Rachel', 'Tobias', 'George']
    
    # match-not-contains
    And match response.data[*].id !contains [null, 3]
    And match response.data[*].id !contains 5
    And match response.data[*].id !contains [1, 2, 3]
    
    # match-contains-only
    And match response.data[*].id contains only [7, 8, 9, 10, 11, 12]
    And match response.data[*].id contains only [12, 9, 8, 11, 10, 7]
    
    # Check the length
    And assert response.data.length == 6
    #And assert response.length == 1
    
    # Ignore a specific value and assert the response
    And match response.data[3] == {"id": 10, "email": '#ignore', "first_name": "Byron", "last_name": "Fields", "avatar": '#ignore'}
   
    # Validate response against data in a file
    And match response == expectedOutput
    And match $ == expectedOutput
