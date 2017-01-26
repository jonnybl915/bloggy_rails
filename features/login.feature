Feature: logging in as a user

  Scenario: logging in to account as existing user
    Given There exists a user account
    When I navigate to the sign in page
    And I log in with the correct credentials
    Then I am logged in


