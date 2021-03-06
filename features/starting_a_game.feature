Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

Scenario: Beginning a game
  Given I am on the homepage
  When I follow "New Game"
  Then I should see "What's your name?"

Scenario: Registering
  Given I am on the new game page
  When I type in "name" with "Tomi"
  And I click "Register"
  Then I should see "Welcome, Tomi"

Scenario: Registering without a name
  Given I am on the new game page
  When I type in "name" with ""
  And I click "Register"
  Then I should see "Welcome to your Battleship game!"

Scenario: Seeing a game board
  Given I am on the new game page
  When I click "Register"
  Then I should see a board

