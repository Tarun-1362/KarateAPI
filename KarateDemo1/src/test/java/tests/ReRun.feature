Feature: ReRun failed tests

  Background: 
    * url 'https://reqres.in/api'
    * configure afterScenario =
      """
        function(){
          var info = karate.info; 
          karate.log(info);
          if(info.errorMessage){
          	karate.call('ReRun.feature');
          }
        }
      """

	@demo1
  Scenario: Post demo 2
    Given path '/users'
    And request
      """
      {
       "name": "Raghav", 
      "job": "leader"
      }
      """
    When method POST
    Then status 200
