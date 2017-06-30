Feature: Admin page
  I want to test the admin section
  Background:
    Given I go to "/en/login"

  Scenario: I want to check I'm on the right page
    Then I should see "Secure Sign In"

  Scenario: I want to test the connexion with correct credentials
    Given I fill in "username" with "jane_admin"
    And I fill in "password" with "kitten"
    And I press "Sign in"
    Then I should see "Backend"

  Scenario: I want to test the connexion with wrong credentials
    Given I fill in "username" with "joe_admin"
    And I fill in "password" with "kitten"
    And I press "Sign in"
    Then I should see "Invalid credentials"