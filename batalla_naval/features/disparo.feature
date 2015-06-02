@wip
Feature: Shoot


Background: creacion del escenario
    Given a board with dimension "5" x "5"
    And a large ship in position  "3:3"



Scenario: Shoot and miss
	Given I shoot to position "2:3"
	Then I get "water"

Scenario: Shoot and hit
	Given I shoot to position "3:3" and assert the hit
	Then I got "hit"


Scenario: Shoot and sink
	Given I shoot the positions "3:4"
    Then I get "hit"
	And I shoot to position “3:3”
    Then I get "sink"

