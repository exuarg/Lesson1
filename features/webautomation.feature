Feature: web automation
  Scenario: going to guitarcenter
    Given user goes to guitarcenter
    Then the web side loads

  Scenario:  As a user, when I go to guitarcenter.com, I can use their search functionality
    Given someone goes to guitarcenters website
    When they enter a search term of "Electric Piano"
    Then they get results about "Electric Piano"