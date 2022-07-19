@Equip
Feature: Equipment Stacking Sidebar Sidebar and Chart is KLA No Filters

	Confirmation of supplier text on Equpment Stacking Page without filters selectd

	Background: Screen resolution
		Given the screen resolution is "1920X1080"

	Scenario: Open Equipment Stacking Page
		Given the "Equipment Stacking" page is visited
		Then the words "Supplier" should be displayed

	Scenario: Enter KLA Text
		Given the "Supplier" input is displayed
		When "KLA" is typed into the "Supplier" input
		Then the "Supplier" input should display the "KLA" option

	Scenario: Click KLA Button
		When the "Supplier" input "KLA" option is selected
		Then the words "Process" should be displayed

	Scenario: Click the Go button
		Given the page is cleared
		When the "GO" button is clicked
		Then the "Equipment Stacking" highcharts graph should be displayed

	Scenario: Verify Graph Data
		Given the "Equipment Stacking" highcharts graph is displayed
		Then the "Equipment Stacking" highcarts graph should display a total number of "13" legend items
		# Then the "Equipment Stacking" highcharts graph should display a plot line
		Then the "Equipment Stacking" highcharts graph should display a y-axis that says "Tool Counts"
# Use actual name of y-axis





