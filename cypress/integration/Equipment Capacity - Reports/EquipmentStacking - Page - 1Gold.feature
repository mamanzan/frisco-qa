@Equip
Feature: Equipment Stacking GOLD

	Confirmation of supplier text on Equpment Stacking Page

	Background: Screen resolution
		Given the screen resolution is "1920X1080"

	Scenario: Open Equipment Stacking Page
		Given the "Equipment Stacking" page is visited
		Then the words "Supplier" should be displayed

	Scenario: Enter ASM Text
		Given the "Supplier" input is displayed
		When "ASM" is typed into the "Supplier" input
		Then the "Supplier" input should display the "ASM" option

	Scenario: Click ASM Button
		When the "Supplier" input "ASM" option is selected
		Then the words "Tool Line" should be displayed

	Scenario: Display Tool Line Dropdown
		Given the "Tool Line" dropdown is displayed
		When the "Tool Line" dropdown is opened
		Then the "EPI(ASM)" dropdown should be displayed

	Scenario: Select ASM Tool Line EPI ASM
		When the "Tool Line" dropdown is opened and "EPI(ASM)" is selected
		Then the "Tool Line" dropdown should be displayed

	Scenario: Select ASM Tool Line EPI DIELECTRICS(ASM)
		When the "Tool Line" dropdown is opened and "DIELECTRICS(ASM)" is selected
		Then the "Process" dropdown should be displayed

	Scenario: Select Processes
		When the "Process" dropdown is opened and "1271" is selected
		And the "Process" dropdown is opened and "1272" is selected
		And the "Process" dropdown is opened and "1274" is selected
		And the "Process" dropdown is opened and "1276" is selected
		Then the "Process" dropdown should be displayed

	Scenario: Select All Locations
		When the "Location" dropdown is opened and "All" is selected
		Then the "Category" dropdown should be displayed

	Scenario: Select All Categories
		When the "Category" dropdown is opened and "All" is selected
		Then the "Category" dropdown should be displayed

	Scenario: Click the Go button
		Given the page is cleared
		When the "GO" button is clicked
		Then the "Equipment Stacking" highcharts graph should be displayed

	Scenario: Capacity value added
		Given the "Capacity" input is displayed
		When "4" is typed into the "Capacity" input
		Then the words "Capacity" should be displayed

	Scenario: Verify Graph Data
		Given the "Equipment Stacking" highcharts graph is displayed
		Then the "Equipment Stacking" highcarts graph should display a total number of "1" legend items
		# Then the "Equipment Stacking" highcharts graph should display a plot line
		Then the "Equipment Stacking" highcharts graph should display a y-axis that says "Tool Counts"
		Then the "Equipment Stacking" highcharts graph should display a plot line
	# Use actual name of y-axis

	Scenario: Navigate the tabs
		Given the "Chart" tab is displayed
		And the "Details" tab is displayed
		When the "Details" tab is clicked
		Then the "React Table" table should be displayed
		And the "React Table" table should display a total of "20" rows
		And the "React Table" table should display a total of "15" columns
		And the "React Table" table should display a column header named "Supplier"
		And the "React Table" table should display a column header named "Impact"
		#And the "React Table" table should display a column header named "Dog"
		And the "React Table" table should display a column header named "Site"
		And the "React Table" table should display "ASM" at row "2", column "2"



