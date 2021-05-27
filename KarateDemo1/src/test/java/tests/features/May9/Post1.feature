Feature: Post API Request demo

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    * def expectedOutput = read('response1.json')

  # Simple Post scenario
  Scenario: Post demo 1
    Given url 'https://reqres.in/api/users'
    And request { "name": "Raghav", "job": "leader"}
    When method post
    Then status 201

  # Post scenario with Background
  Scenario: Post demo 2
    Given path '/users'
    And request { "name": "Raghav", "job": "leader"}
    When method POST
    Then status 201

  # Post with response assertion
  Scenario: Post demo 3
    Given path '/users'
    And request { "name": "Raghav", "job": "leader"}
    When method post
    Then status 201
    And match response == {"name": "Raghav", "job": "leader","id": "#string","createdAt": "#ignore"}

  # Post with response matching from file
  Scenario: Post demo 4
    Given path '/users'
    And request { "name": "Raghav", "job": "leader"}
    When method post
    Then status 201
    And match response == expectedOutput
    And match $ == expectedOutput

  # Read body data from file
  Scenario: Post demo 5
    Given path '/users'
    And def requestBody = read('userdata.json')
    And request requestBody
    When method post
    Then status 201
    And print response

  # Read body data from file with relative path
  Scenario: Post demo 6
    Given path '/users'
    And def name = "Raghav"
    And print 'Name is : ',name
    And def home = java.lang.System.getProperty('user.dir')
    And print 'Path is : ',home
    And def filePath = home+'/src/test/java/data/userdata.json'
    And print filePath
    And def home2 = karate.properties['user.dir']
    And print 'Path is : ',home2
    And def requestBody = home2+'/src/test/java/data/userdata.json'
    
    #And print read(karate.properties["user.dir"])
    #And def requestBody = read(karate.properties["user.dir"] + "../src/test/java/data/userdata.json")
    #And def requestBody = read('userdata.json')
    And request requestBody
    When method post
    Then status 201
    Then print response

  # Read body data from file and change request values
  Scenario: Post demo 7
    Given path '/users'
    And def requestBody = read('userdata.json')
    And request requestBody
    And set requestBody.job = 'engineer'
    When method post
    Then status 201
