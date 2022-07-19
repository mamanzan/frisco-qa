@zano
Feature: Supplier IQ Labor Filter and Clear

	Trying out all the hooks on the page for further refinement

	Background: Screen resolution
		Given the screen resolution is "1920X1080"

	Scenario: Visit the page
		Given the "IQ Labor" page is visited
		Then the words "IQ Labor" should be displayed

	Scenario: Select Supplier
		Given the "Supplier" dropdown is displayed
		When the "Supplier" dropdown is opened and "HITACHI HIGH TECHNOLOGIES AMERICA" is selected
		And the "Supplier" dropdown is opened and "ASML US, LLC" is selected
		And the "Supplier" dropdown is opened and "INNERSENSE LTD" is selected
		And the "Supplier" dropdown is opened and "KOKUSAI SEMICONDUCTOR EQUIPMENT COR" is selected
		And the "Supplier" dropdown is opened and "Nikon Instruments Inc ." is selected
		And the "Supplier" dropdown is opened and "TOKYO ELECTRON LIMITED" is selected
		And the "Supplier" dropdown is opened and "Ebara Technologies Incorporated" is selected

	Scenario: Load HC Data
		Given the page is cleared
		When the "HC" button is clicked
		# And the app waits for "30" seconds
		Then the "IQ Labor Chart" highcharts graph should be displayed

	Scenario: Clear Suppliers
		Given the "ClearAllFilters" button is displayed
		When the "ClearAllFilters" button is clicked

	Scenario: Load HC Data
		Given the page is cleared
		When the "HC" button is clicked
		# And the app waits for "30" seconds
		Then the "IQ Labor Chart" highcharts graph should be displayed
		And the "IQ Labor Chart" highcarts graph should display a total number of "13" legend items


	Scenario: Select Supplier
		Given the "Supplier" dropdown is displayed
		When the "Supplier" dropdown is opened and "AXCELIS TECHNOLOGIES INC" is selected
		And the "Supplier" dropdown is opened and "CHEMWEST SYSTEMS INC" is selected
		And the "Supplier" dropdown is opened and "HPSP Co., Ltd" is selected
		And the "Supplier" dropdown is opened and "KOKUSAI SEMICONDUCTOR EQUIPMENT COR" is selected
		And the "Supplier" dropdown is opened and "Kla Corporation" is selected
		And the "Supplier" dropdown is opened and "NIKON PRECISION INC" is selected
		And the "Supplier" dropdown is opened and "RUDOLPH TECHNOLOGIES" is selected

	Scenario: Select Platform
		Given the "Platform" dropdown is displayed
		When the "Platform" dropdown is opened and "KLA Tencor - Bare Wafer" is selected
		And the "Platform" dropdown is opened and "KLA Tencor - Candela (ILW)" is selected
		And the "Platform" dropdown is opened and "AXCELIS -  DUV CURE" is selected
		And the "Platform" dropdown is opened and "Kokusai - Quixace/LCT" is selected
		Then the "Supplier" dropdown should display a total of "4" options

	Scenario: Clear Platforms
		Given the "Platform" dropdown is displayed
		When the "Platform" dropdown is opened and "ClearFilter" is selected
		Then the "Supplier" dropdown should display a total of "26" options


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

	Scenario: Load Activity Data
		Given the page is cleared
		When the "Activity" button is clicked
		# And the app waits for "30" seconds
		Then the "IQ Labor Chart" highcharts graph should be displayed
		And the "IQ Labor Chart" highcharts graph should display a title that says "IQ Labor Demand - Install Activity Counts"
		And the "IQ Labor Chart" highcarts graph should display a total number of "6" legend items

	Scenario: Clear Process
		Given the "Process" dropdown is displayed
		When the "Process" dropdown is opened and "ClearFilter" is selected
		Then the "Supplier" dropdown should display a total of "25" options