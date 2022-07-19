@jamal
Feature: Supplier IQ Labor WIF

	Trying out all the hooks on the page for further refinement

	Background: Screen resolution
		Given the screen resolution is "1920X1080"

	Scenario: Visit the page
		Given the "Supplier IQ Labor WIF" page is visited
		Then the words "Supplier IQ Labor WIF" should be displayed

	Scenario: Wait for dropdown Loading
		When the app waits for "30" seconds
		Then the "WIF Scenario" dropdown should be displayed

	Scenario: Display WIF Menu
		Given the "WIF Scenario" button is displayed
		When the "WIF Scenario" button is clicked
		Then the "txtWIF Scenario" button should be enabled
		And the "WIF Scenario" dropdown should be displayed


	Scenario: Search WIF NAME
		Given the "txtWIF Scenario" input is displayed
		When the "txtWIF Scenario" input has "Scenario" typed in
		Then the "WIF Scenario" dropdown should display the "Scenario X" option


	Scenario: Select WIF NAME
		Given the "txtWIF Scenario" input is displayed
		When the "WIF Scenario" dropdown "Scenario X" is selected
		# Then the "WIF Scenario" dropdown should not be diplayed
		Then the "Suppliers" dropdown should be displayed

	Scenario: Display Supplier 1
		Given the "Suppliers" button is displayed
		When the "Suppliers" button is clicked
		Then the "txtSuppliers" button should be enabled
		And the "Suppliers" dropdown should be displayed

	Scenario: Search Supplier 1
		Given the "txtSuppliers" input is displayed
		When the "txtSuppliers" input has "INC" typed in
		Then the "Suppliers" dropdown should display the "APPLIED MATERIALS INC" option
		And the "Suppliers" dropdown should display the "ASM AMERICA INC" option


	Scenario: Select Supplier 1
		Given the "txtSuppliers" input is displayed
		When the "Suppliers" dropdown "APPLIED MATERIALS INC" is selected
		Then the "Suppliers" dropdown should be displayed
	# Then the "Supplier" dropdown should display several options

	Scenario: Display Supplier 2
		Given the "Suppliers" button is displayed
		When the "Suppliers" button is clicked
		Then the "txtSuppliers" button should be enabled
		And the "Suppliers" dropdown should be displayed

	# Scenario: Search Supplier 2
	# 	Given the "txtSuppliers" input is displayed
	# 	When the "Suppliers" dropdown is opened
	# 	Then the "Suppliers" dropdown should display the "APPLIED MATERIALS INC" option
	# 	And the "Suppliers" dropdown should display the "ASM AMERICA INC" option


	Scenario: Select Supplier 2
		Given the "txtSuppliers" input is displayed
		When the "Suppliers" dropdown "ASM AMERICA INC" is selected
		Then the "Suppliers" dropdown should be displayed
	# Then the "Supplier" dropdown should display several options

	Scenario: Display Platforms
		Given the "Platforms" button is displayed
		When the "Platforms" button is clicked
		Then the "txtPlatforms" button should be enabled
		And the "Platforms" dropdown should be displayed

	Scenario: Search Platforms
		Given the "txtPlatforms" input is displayed
		When the "txtPlatforms" input has "AM" typed in
		Then the "Platforms" dropdown should display the "AMAT - ENDURA" option
		And the "Platforms" dropdown should display the "AME" option


	Scenario: Select Platforms
		Given the "txtPlatforms" input is displayed
		When the "Platforms" dropdown "AMAT - ENDURA" is selected
		Then the "Platforms" dropdown should display several options

	# Scenario: Select Sites
	# 	Given the "Sites" dropdown is displayed
	# 	When the "Sites" dropdown is opened and "D1D" is selected

	Scenario: Display Sites
		Given the "Sites" button is displayed
		When the "Sites" button is clicked
		Then the "txtSites" button should be enabled
		And the "Sites" dropdown should be displayed

	Scenario: Search Sites
		Given the "txtSites" input is displayed
		When the "txtSites" input has "D" typed in
		Then the "Sites" dropdown should display the "D1D" option


	Scenario: Select Sites
		Given the "txtSites" input is displayed
		When the "Sites" dropdown "D1D" is selected
	# Then the "Sites" dropdown should display a total of "3" options

	Scenario: Select Process
		Given the "Process" dropdown is displayed
		When the "Process" dropdown is opened and "1276" is selected

	Scenario: Select Fulfillment
		Given the "Fulfillment" dropdown is displayed
		When the "Fulfillment" dropdown is opened and "Buy" is selected
	# And the "Fulfillment" dropdown is opened and "Fulfillment 2" is selected

	Scenario: Select Activity
		Given the "Activity" dropdown is displayed
		When the "Activity" dropdown is opened and "Set" is selected
	# And the "Activities" dropdown is opened and "SQ" is selected
	# And the "Activities" dropdown is opened and "ACT 4" is selected

	Scenario: Load HC Data
		Given the page is cleared
		When the "btnSite" button is clicked
		And the app waits for "30" seconds
		Then the "SupplierIQWifChart" highcharts graph should be displayed
		And the "SupplierIQWifChart" highcharts graph should display a y-axis that says "Head Count"
		And the "SupplierIQWifChart" highcharts graph should display a title that says "Install Forecast WIF - Head Count by Site"
		And the "SupplierIQWifChart" highcharts graph should display a subtitle that says "Intel Top Secret"

	Scenario: Load Activity Data
		Given the page is cleared
		When the "btnActivity" button is clicked
		And the app waits for "30" seconds
		Then the "SupplierIQWifChart" highcharts graph should be displayed
		And the "SupplierIQWifChart" highcharts graph should display a y-axis that says "Activity Count"
		And the "SupplierIQWifChart" highcharts graph should display a title that says "IQ Labor Demand WIF - Install Activity Counts"
		And the "SupplierIQWifChart" highcharts graph should display a subtitle that says "Intel Top Secret"

	Scenario: Load Tool Data
		Given the page is cleared
		When the "btnTool" button is clicked
		And the app waits for "30" seconds
		Then the "SupplierIQWifChart" highcharts graph should be displayed
		And the "SupplierIQWifChart" highcharts graph should display a y-axis that says "Tools"
		And the "SupplierIQWifChart" highcharts graph should display a title that says "Install Forecast WIF - Tool by Site"
		And the "SupplierIQWifChart" highcharts graph should display a subtitle that says "Intel Top Secret"

	Scenario: Load Cost Data
		Given the page is cleared
		When the "btnCost" button is clicked
		And the app waits for "30" seconds
		Then the "SupplierIQWifChart" highcharts graph should be displayed
		And the "SupplierIQWifChart" highcharts graph should display a y-axis that says "Cost"
		And the "SupplierIQWifChart" highcharts graph should display a title that says "IQ Labor Demand WIF - Supplier Labor Cost"
		And the "SupplierIQWifChart" highcharts graph should display a subtitle that says "Intel Top Secret"

	Scenario: Show Applied Filters
		Given the "ShowFilters" button is displayed
		When the "ShowFilters" button is clicked
		Then the "FiltersDisplay" popup is displayed

	# Scenario: Show Overlap
	# 	Given the "Overlap" button is displayed
	# 	When the "Overlap" button is clicked
	# 	# And the app waits for "30" seconds
	# 	Then the "IQ Labor WIF Chart" highcharts graph should be displayed

	Scenario: Filters Cleared
		Given the "ClearAllFilters" button is displayed
		When the "ClearAllFilters" button is clicked
		And the app waits for "5" seconds
		Then the "WIF Scenario" dropdown should be displayed
# Then the "Supplier" dropdown should display a total of "26" options


# Scenario: Image Data
# 	Given the "Screenshot" button is displayed
# 	When the "Screenshot" button is clicked

# Scenario: Download Data
# 	Given the "Export" button is displayed
# 	When the app waits for "10" seconds
# 	And the "Export" button is clicked