Feature: logging out

  Scenario: I succesfully log out after having been logged in
    Given that I am logged in as a user
    When I hit the logout button
    Then I am logged out (not logged in)
    And I am on the sign in page