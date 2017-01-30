Feature: allowing a user to see their own posts in a dashboard view

  Scenario: creating a post and navigating to the dashboard
    Given I sign up as a new user
    And I navigate to the create posts page and create a post
    And I navigate to my dashboard
    Then My newly created post is displayed on my dashboard


