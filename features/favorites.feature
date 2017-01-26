Feature: favoriting a blog post

  Scenario: adding a favorite
    Given I'm a user
    When  I favorite a post
    Then that post is in my favorites
    And I am in the posts' followers

  Scenario: favoriting using the web
    Given I'm logged in
    And I'm viewing "How to Ruby"
    When I click the favorite button
    Then "How to Ruby" should show up in my favorites

  Scenario: unfavoriting using the web (on a favorited post)
    Given I'm logged in
    And I'm viewing a post which I have already favorited
    When I click the unfavorite button
    Then that post is removed from my favorites

