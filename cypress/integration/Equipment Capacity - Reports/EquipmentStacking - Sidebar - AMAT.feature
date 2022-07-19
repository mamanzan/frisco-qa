@Equip
Feature: Equipment Stacking Sidebar and Chart AMAT

	Confirmation of supplier text on Equpment Stacking Page

	Background: Screen resolution
		Given the screen resolution is "1920X1080"

	Scenario: Open Equipment Stacking Page
		Given the "Equipment Stacking" page is visited
		Then the words "Supplier" should be displayed

	Scenario: Enter AMAT Text
		Given the "Supplier" input is displayed
		When "AMAT" is typed into the "Supplier" input
		Then the "Supplier" input should display the "AMAT" option

	Scenario: Click AMAT Button
		When the "Supplier" input "AMAT" option is selected
		Then the words "Tool Line" should be displayed

	Scenario: STD Milestone Active Public Inactive
		Given the "mileStoneFilter" toggle is visible
		Then the "publicFilter" toggle options should be disabled

	Scenario: CEID Dropdown Verification
		Given the "EntityType / CEID" input is displayed
		When "a" is typed into the "EntityType / CEID" input
		Then the "EntityType / CEID" input should display the "AMAid" option

	# Scenario: Select AMAid checkbox
	# 	Given the "EntityType / CEID" input is displayed
	# 	When the "EntityType / CEID" input has a random option selected
	# 	Then the "EntityType / CEID" input should display a selected count of 1

	Scenario: Select AMAid Field in dropdown
		When the "EntityType / CEID" input "AMAid" checkbox option is selected
		Then the "EntityType / CEID" input should display a close icon

	Scenario: Click the Go button
		Given the page is cleared
		When the "GO" button is clicked
		Then the "Equipment Stacking" highcharts graph should be displayed