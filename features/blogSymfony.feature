Feature: Blog page
  I need to check that the blog page is present
  Background:
    Given I go to "/fr/blog/"

  Scenario: Check that I'm on the right page
    Then I should see "Lorem ipsum"

  Scenario: I can change the language
    When I follow "locales"
    Then I should see "Català"