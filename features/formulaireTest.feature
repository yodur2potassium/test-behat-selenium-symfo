@javascript
Feature: Form tests
  I want to check that the form is working
  Background:
    Given I go to "/index.php"

Scenario: I check I'm on the right page
  Then I should see "Formulaire"

Scenario: I can add user to the list
  Given I follow "Suprimmer"
  Given I fill in "prenom" with "Jean-Louis"
  Given I fill in "nom" with "Tamère"
  Given I press "Valider"
  Then I should see "Jean-Louis Tamère"