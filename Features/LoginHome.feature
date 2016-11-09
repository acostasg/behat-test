#Feature
Feature:
  In order to access the administrative interface
  As a visitor
  I need to be able to log in to the website

  Scenario: error login
    Given I am on the homepage
    And print current URL
    Then I should be on "/login"

  Scenario: Log in with bad credentials
    Given I am on the homepage
    And print current URL
    When I fill in the following:
      | email | qa@adsmurai.com |
      | password | error_test |
    When I fill in "email" with "qa@adsmurai.com"
    And I fill in "password" with "error_test"
    And I press "login_submit"
    Then I should be on "/login"
    And I should see "The specified email or password is not valid"

  Scenario: Log in with username and password
    Given I am on the homepage
    And print current URL
    When I fill in "email" with "qa@adsmurai.com"
    And I fill in "password" with "test"
    And I press "login_submit"
    Then I should be on "/login/picker/6/credentials"
    And I should see "Pick Facebook Ad Account"

  Scenario: Logout
    Given print current URL
    When I am on "/logout"
    Then I should be on "/login"
    And I should see "Login"