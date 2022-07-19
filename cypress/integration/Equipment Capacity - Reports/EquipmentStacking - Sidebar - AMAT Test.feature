@Equipment/Stacking (URL)
Feature: Equipment Stacking - HighChart - Test - AMAT Test Feature

	Confirmation of chart content on Equpment Stacking Page

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

	Scenario: Click the Go button
		Given the page is cleared
		When the "GO" button is clicked
		Then the "Equipment Stacking" highcharts graph should be displayed

	Scenario: Verify Graph Data
		Given the "Equipment Stacking" highcharts graph is displayed
		Then the "Equipment Stacking" highcarts graph should display a total number of "12" legend items
		# Then the "Equipment Stacking" highcharts graph should display a plot line
		Then the "Equipment Stacking" highcharts graph should display a y-axis that says "Tool Counts"
	# Use actual name of y-axis

	Scenario: Add Number to Capacity Field
		When the "Capacity" input has "10" typed in
		Then the "Equipment Stacking" highcharts graph should display a plot line

