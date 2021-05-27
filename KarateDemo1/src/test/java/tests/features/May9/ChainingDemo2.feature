Feature: Chaining demo

  @third
  Scenario: scenario three
    * print 'I am inside 3rd scenario'

  @fourth
  Scenario: scenario four
    * print 'I am inside 4th scenario'
#		* def result = call read('classpath:tests/features/May9/ChainingDemo.feature@second')
		* def result = call read('classpath:tests/GetUserID.feature')
		* def userid = result.response.id
		* print 'user id is : '+userid