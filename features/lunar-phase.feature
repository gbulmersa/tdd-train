Feature: Lunar Phase Calulator
	This is needed for people with chest hair

Scenario: User provides a date in 2017

	Given the user types a date of <user_date>
	And the user asks for the lunar phase
	Then the lunar phase is <lunar_phase>

	Examples:
	| user_date | lunar_phase |
	| 01/05/2017 | First Quater |
	| 03/12/2017 | Full Moon |
	| 05/18/2017 | Third Quarter |
	| 10/19/2017 | New Moon |


 
Scenario: User provides a date not in 2017

	When the user provides a non 2017 date
	And the user asks for the lunar phase
	Then the user is notified that the date provided is invalid