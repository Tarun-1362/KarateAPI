@parallel=false
Feature: Sample tests

  @first
  Scenario: 1st Test
    Given print 'I am inside 1st test'


  @ignore
  Scenario: 3rd Test
    Given print 'I am inside 3rd test'


  @first @second
  Scenario: 4th Test
    Given print 'I am inside 4th test'
