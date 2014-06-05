Feature: web automation
  Scenario: going to guitarcenter
    Given user goes to guitarcenter
    Then the web side loads

  Scenario:  As a user, when I go to guitarcenter.com, I can use their search functionality
    Given someone goes to guitarcenters website
    When they enter a search term of "Electric Piano"
    Then they get results about "Electric Piano"

    Scenario: as a user i go to guitarcenter.com, I can go to the log in page by clicking log in
      Given someone goes guitarcenter website
      When click on log in
      Then they get redirected to log in page
