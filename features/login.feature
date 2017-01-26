Feature: logging in as a user

  Scenario: logging in to account as existing user
    Given There exists a user account
    When I navigate to the sign in page
    And I log in with the correct credentials
    Then I am logged in

  Scenario: failing to log in on account of having no account
    Given That jon@example.com does not have an account
    When I navigate to the sign in page
    And I try to log in as jon@example.com
    Then I am still on the login page
    And I should see that the email/password combination is invalid

