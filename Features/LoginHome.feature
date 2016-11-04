#Feature
Feature:
  In has katana user
  I login

  Scenario:
    Given I am on the homepage
    When I fill in "email" with "qa@adsmurai.com"
    And I fill in "password" with "test"
    Then I should see "Pick Facebook Ad Account"