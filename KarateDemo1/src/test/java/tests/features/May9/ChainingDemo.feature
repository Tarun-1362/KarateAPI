Feature: Chaining demo

  @first
  Scenario: scenario one
    * print 'I am inside 1st scenario'

  @second
  Scenario: scenario two
    * print 'I am inside 2nd scenario'
		* def result = call read('ChainingDemo.feature@first')