Feature: fetching User Details

  Scenario: testing the get call for User Details
    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200
    And match $.data.id == "#notnull"
    And match $.data.id == 2
    And match $.data contains {"id":2}
    