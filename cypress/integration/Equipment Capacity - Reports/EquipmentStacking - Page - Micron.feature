@Equip
Feature: Equipment Stacking Sidebar and Chart Supplier is Micron

	Confirmation of supplier text on Equpment Stacking Page

	Background: Screen resolution
		Given the screen resolution is "1920X1080"

	Scenario: Open Equipment Stacking Page
		Given the "Equipment Stacking" page is visited
		Then the words "Supplier" should be displayed

	Scenario: Enter Micron Text
		Given the "Supplier" input is displayed
		When "Micron" is typed into the "Supplier" input
		Then the "Supplier" input should display the "Micron" option

	Scenario: Click Micron Button
		When the "Supplier" input "Micron" option is selected
		Then the words "Process" should be displayed

	Scenario: Select Processes
		When the "Process" dropdown is opened and "All" is selected
		Then the "Location" dropdown should be displayed

	Scenario: Select All Locations
		When the "Location" dropdown is opened and "All" is selected
		Then the "Category" dropdown should be displayed

	Scenario: Select All Categories
		When the "Category" dropdown is opened and "All" is selected
		Then the "Category" dropdown should be displayed

# 	Scenario: Click the Go button
# 		Given the page is cleared
# 		When the "GO" button is clicked
# 		Then the "Equipment Stacking" highcharts graph should be displayed
# # Need Hook for chart to display text "No results were returned for this combination!"




