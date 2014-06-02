Feature: Adding
  Scenario: Add two numbers
    Given the input "2+4"
    When the calculator is run
    Then the output should be "4"


    Scenario: going to guitarcenter
      Given user goes to guitarcenter
      Then the web side loads