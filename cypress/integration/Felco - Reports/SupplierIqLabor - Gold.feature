@zano
Feature: Supplier IQ Labor Sandbox

	Trying out all the hooks on the page for further refinement

	Background: Screen resolution
		Given the screen resolution is "1920X1080"

	Scenario: Visit the page
		Given the "IQ Labor" page is visited
		Then the words "IQ Labor" should be displayed

	Scenario: Select Supplier
		Given the "Supplier" dropdown is displayed
		When the "Supplier" dropdown is opened and "APPLIED MATERIALS INC" is selected
		And the "Supplier" dropdown is opened and "TOKYO ELECTRON LIMITED" is selected

	Scenario: Select Platform
		Given the "Platform" dropdown is displayed
		When the "Platform" dropdown is opened and "AMAT - ENDURA" is selected
		And the "Platform" dropdown is opened and "AMAT - CENTRIS" is selected
		Then the "Sites" dropdown should display a total of "7" options
		And the "Supplier" dropdown should display a total of "2" options

	Scenario: Select Sites
		Given the "Sites" dropdown is displayed
		When the "Sites" dropdown is opened and "F32" is selected
		And the "Sites" dropdown is opened and "F28" is selected

	Scenario: Select Process
		Given the "Process" dropdown is displayed
		When the "Process" dropdown is opened and "1274" is selected
		And the "Process" dropdown is opened and "1272" is selected

	Scenario: Select Fulfillment
		Given the "Fulfillment" dropdown is displayed
		When the "Fulfillment" dropdown is opened and "Site" is selected
		And the "Fulfillment" dropdown is opened and "Buy" is selected

	Scenario: Select Activities
		Given the "Activities" dropdown is displayed
		When the "Activities" dropdown is opened and "Conv" is selected
		And the "Activities" dropdown is opened and "SL1" is selected
		And the "Activities" dropdown is opened and "SL2" is selected
		And the "Activities" dropdown is opened and "SQ" is selected

	Scenario: Load HC Data
		Given the page is cleared
		When the "HC" button is clicked
		And the app waits for "300" seconds
		Then the "IQ Labor Chart" highcharts graph should be displayed
		And the "IQ Labor Chart" highcharts graph should display a y-axis that says "Head Count"
		And the "IQ Labor Chart" highcharts graph should display a title that says "Head Count by Site"



	Scenario: Load Activity Data
		Given the page is cleared
		When the "Activity" button is clicked
		# And the app waits for "30" seconds
		Then the "IQ Labor Chart" highcharts graph should be displayed
		And the "IQ Labor Chart" highcharts graph should display a y-axis that says "Activity Count"
		And the "IQ Labor Chart" highcharts graph should display a title that says "Install Activity Counts"

	Scenario: Load Tool Data
		Given the page is cleared
		When the "Tool" button is clicked
		# And the app waits for "30" seconds
		Then the "IQ Labor Chart" highcharts graph should be displayed
		And the "IQ Labor Chart" highcharts graph should display a y-axis that says "Tools"

	Scenario: Load Cost Data
		Given the page is cleared
		When the "Cost" button is clicked
		# And the app waits for "30" seconds
		Then the "IQ Labor Chart" highcharts graph should be displayed
		And the "IQ Labor Chart" highcharts graph should display a y-axis that says "Cost"
		And the "IQ Labor Chart" highcharts graph should display a subtitle that says "Confidential"

	Scenario: Show Applied Filters
		Given the "ShowFilters" button is displayed
		When the "ShowFilters" button is clicked
		Then the "FiltersDisplay" popup is displayed

	Scenario: Show Overlap
		Given the "Overlap" button is displayed
		When the "Overlap" button is clicked
		# And the app waits for "30" seconds
		Then the "IQ Labor Chart" highcharts graph should be displayed

	Scenario: Show Intel View
		Given the "publicFilter" button is displayed
		When the "false" button is clicked
		# And the app waits for "30" seconds
		Then the "IQ Labor Chart" highcharts graph should be displayed
		And the "IQ Labor Chart" highcharts graph should display a subtitle that says "Secret"

	Scenario: Filters Cleared
		Given the "ClearAllFilters" button is displayed
		When the "ClearAllFilters" button is clicked
		And the app waits for "5" seconds
		And the "Supplier" dropdown is opened
		# Then the "Supplier" dropdown should display a total of "26" options
		Then the "Supplier" dropdown should display the "ASM AMERICA INC" option

	Scenario: Drop Down Closed
		Given the page is cleared

# Scenario: Image Data
# 	Given the "Screenshot" button is displayed
# 	When the "Screenshot" button is clicked

# Scenario: Download Data
# 	Given the "Export" button is displayed
# 	When the app waits for "10" seconds
# 	And the "Export" button is clicked