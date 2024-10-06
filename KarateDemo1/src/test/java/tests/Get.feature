Feature: Get API Demo


  Background:
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'


#get demo without background and path
  Scenario: Get Demo 1
    Given url 'https://reqres.in/api/users?page=2'
    When method Get
    Then status 200
    And print response
    And print responseStatus
    And print responseHeaders
    And print responseCookies
  
#get demo with Background and header
  Scenario: Get Demo 2
    Given path '/users/2'
    When method Get
    Then status 200

#We can also print response headers, responsestatus,
#  responseTime, responseHeaders, responseCookies

#  Get with Path, Params
  Scenario: Get Demo 2
    Given path '/users'
    And param page = 2
    When method Get
    Then status 200
    And print response
    And match response.data[0].first_name !=null
    And assert response.data.length >= 6
    And assert response.data[1].id==8
    And print "Test executed"

