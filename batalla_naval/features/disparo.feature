Feature: Shoot


Background: creacion del escenario
    Given a board with dimension "5" x "5"
    And a large ship in position  "(2:2),(2:3)"



Scenario: Shoot and miss
	Given I shoot to position "(3:3)"
	Then I get "water"


@wip
Scenario: Shoot and hit
    Given I shoot to position “3:3”
    Then I get hit

@wip
Scenario: Shoot and sink
    Given I shoot to position “3:4”
    Then I get hit