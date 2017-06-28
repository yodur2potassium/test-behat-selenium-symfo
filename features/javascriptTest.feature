Feature: Try with and without javascript support
  I need to be able to display the modal

# This test failed because the button "Voir le code" execute javascript command not supported by Goutte

#  Scenario: Without javascript i can't see the modal
#    When I go to "/fr/blog/"
#    Then I should see "Voir le code"
#    When I press the "Voir le code" button
#    Then I should see "Code du contrôleur"

  @javascript
  Scenario: Without javascript i can't see the modal
    When I go to "/fr/blog/"
    Then I should see "Voir le code"
    When I press the "Voir le code" button
     And I wait 2 seconds
    Then I should see "Code du contrôleur"