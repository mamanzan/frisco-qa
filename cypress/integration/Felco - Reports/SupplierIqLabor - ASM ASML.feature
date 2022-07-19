@zano
Feature: Supplier IQ Labor ASM ASML

	Trying out all the hooks on the page for further refinement

	Background: Screen resolution
		Given the screen resolution is "1920X1080"

	Scenario: Visit the page
		Given the "IQ Labor" page is visited
		Then the words "IQ Labor" should be displayed

	Scenario: Select Supplier
		Given the "Supplier" dropdown is displayed
		When the "Supplier" dropdown is opened and "ASM AMERICA INC" is selected
		And the "Supplier" dropdown is opened and "ASML US, LLC" is selected
		And the "Supplier" dropdown is opened and "BROOKS AUTOMATION, INC" is selected

	Scenario: Select Platform
		Given the "Platform" dropdown is displayed
		When the "Platform" dropdown is opened and "ASM - Synergies MX (ABV)" is selected
		And the "Platform" dropdown is opened and "ASM - XP4 - Pulsar (ALE)" is selected
		And the "Platform" dropdown is opened and "BROOKS - LSA-LSB" is selected
		And the "Platform" dropdown is opened and "ASML NXE Scanner" is selected
		And the "Platform" dropdown is opened and "Brooks - ARM, ARN - RETICLE MACRO INSPECTION" is selected
		Then the "Sites" dropdown should display a total of "4" options
		And the "Supplier" dropdown should display a total of "3" options

	# Scenario Outline: Select Platform
	# 	Given the "<item>" dropdown is displayed
	# 	When the "<item>" dropdown is opened "ASM - Synergies MX (ABV)" is selected
	# 	Then the "<item>"


	Scenario: Select Sites
		Given the "Sites" dropdown is displayed
		When the "Sites" dropdown is opened and "F32" is selected
		And the "Sites" dropdown is opened and "F28" is selected
		And the "Sites" dropdown is opened and "F24" is selected

	Scenario: Select Process
		Given the "Process" dropdown is displayed
		When the "Process" dropdown is opened and "1274" is selected
		And the "Process" dropdown is opened and "1272" is selected
		And the "Process" dropdown is opened and "1222" is selected

	Scenario: Select Fulfillment
		Given the "Fulfillment" dropdown is displayed
		When the "Fulfillment" dropdown is opened and "Site" is selected
		And the "Fulfillment" dropdown is opened and "Buy" is selected
		And the "Fulfillment" dropdown is opened and "Demo" is selected
		And the "Fulfillment" dropdown is opened and "VF" is selected

	Scenario: Select Activities
		Given the "Activities" dropdown is displayed
		When the "Activities" dropdown is opened and "Conv" is selected
		And the "Activities" dropdown is opened and "SL1" is selected
		And the "Activities" dropdown is opened and "SL2" is selected
		And the "Activities" dropdown is opened and "Set" is selected

	Scenario: Load HC Data
		Given the page is cleared
		When the "HC" button is clicked
		# And the app waits for "30" seconds
		Then the "IQ Labor Chart" highcharts graph should be displayed
		And the "IQ Labor Chart" highcharts graph should display a y-axis that says "Head Count"
		And the "IQ Labor Chart" highcharts graph should display a title that says "Head Count by Site"
		And the "IQ Labor Chart" highcharts graph should display a title that says "Intel Top Secret"
		And the "IQ Labor Chart" highcharts graph should display a title that says "F28"

	Scenario: Load Activity Data
		Given the page is cleared
		When the "Activity" button is clicked
		# And the app waits for "30" seconds
		Then the "IQ Labor Chart" highcharts graph should be displayed
		And the "IQ Labor Chart" highcharts graph should display a y-axis that says "Activity Count"
		And the "IQ Labor Chart" highcharts graph should display a title that says "IQ Labor Demand - Install Activity Counts"

	Scenario: Load Tool Data
		Given the page is cleared
		When the "Tool" button is clicked
		# And the app waits for "30" seconds
		Then the "IQ Labor Chart" highcharts graph should be displayed
		And the "IQ Labor Chart" highcharts graph should display a y-axis that says "Tools"
		And the "IQ Labor Chart" highcharts graph should display a title that says "Install Forecast - Tools By Site"

	Scenario: Load Cost Data
		Given the page is cleared
		When the "Cost" button is clicked
		# And the app waits for "30" seconds
		Then the "IQ Labor Chart" highcharts graph should be displayed
		And the "IQ Labor Chart" highcharts graph should display a y-axis that says "Cost"

	Scenario: Show Applied Filters
		Given the "ShowFilters" button is displayed
		When the "ShowFilters" button is clicked
		Then the "FiltersDisplay" popup is displayed

	Scenario: Show Overlap
		Given the "Overlap" button is displayed
		When the "Overlap" button is clicked
		# And the app waits for "30" seconds
		Then the "IQ Labor Chart" highcharts graph should be displayed

	Scenario: Show Screen Shot
		Given the "Screenshot" button is displayed
		When the "Screenshot" button is clicked
		# And the app waits for "30" seconds
		Then the "IQ Labor Chart" highcharts graph should be displayed

	Scenario: Show Excel Export
		Given the "Export" button is displayed
		When the "Export" button is clicked
		# And the app waits for "30" seconds
		Then the "IQ Labor Chart" highcharts graph should be displayed

	Scenario: Show Supplier View
		Given the "publicFilter" button is displayed
		When the "true" button is clicked
		# And the app waits for "30" seconds
		Then the "IQ Labor Chart" highcharts graph should be displayed
		And the "IQ Labor Chart" highcharts graph should display a subtitle that says "Intel Confidential"


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