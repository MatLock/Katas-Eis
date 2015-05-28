Feature: Shoot





@wip
Scenario: Shoot and miss
	Given I shoot to position "(3:3)"
	Then I get "water"

@wip
Scenario: Shoot and hit
	Given I shoot to position "(2:3)" and assert the hit
	Then I got "hit"

@wip
Scenario: Shoot and sink
	Given I shoot the positions "(2:2)" "(2:3)"
	Then this time I got "sink"
