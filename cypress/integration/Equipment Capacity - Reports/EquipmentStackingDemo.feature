Feature: Equipment Stacking Demo

	Demonstration of BDD test

	Scenario: Selecting AMAT supplier
		Given the "Equipment Stacking" page is visited
		When "AMAT" is typed into the "Supplier" input
		Then the "Supplier" input should display the "AMAT" option

	Scenario: For fun
		Given the "Supplier" input is displayed