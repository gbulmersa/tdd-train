Feature: Reverse the text that the user gives us
	now I can type this

Scenario: User provides text and asks it to be reversed

	Given the user is using our text reversal application
	When the user provides the text that they want to be reversed
	And the user asks for text reversal
	Then the text that the user provided is reversed