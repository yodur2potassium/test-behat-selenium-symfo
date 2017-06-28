@javascript
Feature: Welcome to Symfony
  I need to be able to see welcome to Symfony message

  Scenario: I can see Welcome to Symfony
    When I go to "/"
    Then I should see "Welcome to the Symfony Demo application"

  Scenario: I can't see Welcome to Symfony
    When I go to "/random"
    Then I should not see "Hello World!"

  Scenario: I can see Welcome to Symfony
    When I go to "/fr"
    Then I should see "Bienvenue sur l'application Symfony Demo"