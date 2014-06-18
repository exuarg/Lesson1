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

  Scenario Outline: as a user i can go guitarcenter.com, i can find stores by distance starting with closest depending on zip code.
    Given someone goes to Before do guitarcenter website
    When click on store finder a pop up window opens to input zipcode, you input "<zipcode>"
    Then you get results of stores by distance starting with the closest
  Examples:
    | zipcode |
    | 92376   |
    | 75034   |
    | 20879   |
    | 66225   |

  Scenario: As an user i can go to amazon.com enter the china store, and validate website its in chinese.
    Given user goes to amazon.com
    When click on china store website redirects to amazon china
    Then user is able to see website in chinese


