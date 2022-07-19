@zano
Feature: Supplier IQ Labor Intel View and F

	Trying out all the hooks on the page for further refinement

	Background: Screen resolution
		Given the screen resolution is "1920X1080"

	Scenario: Visit the page
		Given the "IQ Labor" page is visited
		Then the words "IQ Labor" should be displayed

	Scenario: Load HC Data
		Given the page is cleared
		When the "HC" button is clicked
		And the app waits for "30" seconds
		Then the "IQ Labor Chart" highcharts graph should be displayed
		And the "IQ Labor Chart" highcharts graph should display a y-axis that says "Head Count"
		And the "IQ Labor Chart" highcharts graph should display a title that says "Install Forecast - Head Count by Site"
		And the "IQ Labor Chart" highcharts graph should display a title that says "Intel Top Secret"
		And the "IQ Labor Chart" highcarts graph should display a total number of "3" legend items

	Scenario: Clear Site
		Given the "Site" dropdown is displayed
		When the "Site" dropdown is opened and "ClearFilter" is selected
		Then the "Supplier" dropdown should display a total of "25" options

	Scenario: Select Process
		Given the "Process" dropdown is displayed
		When the "Process" dropdown is opened and "1274" is selected
		And the "Process" dropdown is opened and "1272" is selected
		And the "Process" dropdown is opened and "1275" is selected
		And the "Process" dropdown is opened and "1276" is selected

	Scenario: Show Intel View
		Given the "publicFilter" button is displayed
		When the "false" button is clicked
		Then the "WSTie" button should be enabled
		And the "IsShared" button should be enabled

	Scenario: Select WS Ties
		Given the "WSTie" dropdown is displayed
		When the "WSTie" dropdown is opened and "1.5KA" is selected
		And the "WSTie" dropdown is opened and "1000" is selected
		And the "WSTie" dropdown is opened and "10000" is selected
		And the "WSTie" dropdown is opened and "10003" is selected
		And the "WSTie" dropdown is opened and "11000" is selected
		And the "WSTie" dropdown is opened and "11650" is selected
		And the "WSTie" dropdown is opened and "11651" is selected

	Scenario: Load Tool Data
		Given the page is cleared
		When the "Tool" button is clicked
		# And the app waits for "30" seconds
		Then the "IQ Labor Chart" highcharts graph should be displayed
		# And the "IQ Labor Chart" highcharts graph should display a title that says "Tool Counts"
		And the "IQ Labor Chart" highcharts graph should display a title that says "Site"

	Scenario: Select IsShared
		Given the "IsShared" dropdown is displayed
		When the "IsShared" dropdown is opened and "Not Shared" is selected

	Scenario: Load Cost Data
		Given the page is cleared
		When the "Cost" button is clicked
		# And the app waits for "30" seconds
		Then the "IQ Labor Chart" highcharts graph should be displayed
		And the "IQ Labor Chart" highcharts graph should display a subtitle that says "Total Cost"


	Scenario: Clear All Filters
		Given the "ClearAllFilters" button is displayed
		When the "ClearAllFilters" button is clicked
		# And the app waits for "30" seconds
		Then the "Activities" dropdown should be displayed

	Scenario: Load HC Data
		Given the page is cleared
		When the "HC" button is clicked
		# And the app waits for "30" seconds
		Then the "IQ Labor Chart" highcharts graph should be displayed
		And the "IQ Labor Chart" highcharts graph should display a y-axis that says "Head Count"
		And the "IQ Labor Chart" highcharts graph should display a title that says "Head Count by Site"
		And the "IQ Labor Chart" highcharts graph should display a title that says "Intel Top Secret"
		And the "IQ Labor Chart" highcharts graph should display a title that says "RP1"

