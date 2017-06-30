Feature: Blog page
  I need to check that the blog page is present
  Background:
    Given I go to "/fr/blog/"

  Scenario: Check that I'm on the right page
    Then I should see "Lorem ipsum"

  Scenario: I can open the language menu
    When I follow "locales"
    Then I should see "Català"

  Scenario: I can change the language
    When I follow "locales"
    And  I follow "Italiano"
    Then I should see "applicazione demo"

  Scenario: I can see article details
    When I follow "Lorem ipsum"
    Then I should see "commentaire"