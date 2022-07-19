@Equip
Feature: Equipment Stacking Sidebar and Chart Supplier is HITACHI

	Confirmation of supplier text on Equpment Stacking Page

	Background: Screen resolution
		Given the screen resolution is "1920X1080"

	Scenario: Open Equipment Stacking Page
		Given the "Equipment Stacking" page is visited
		Then the words "Supplier" should be displayed

	Scenario: Enter HITACHI Text
		Given the "Supplier" input is displayed
		When "HITACHI" is typed into the "Supplier" input
		Then the "Supplier" input should display the "HITACHI" option

	Scenario: Click HITACHI Button
		When the "Supplier" input "HITACHI" option is selected
		Then the words "Tool Line" should be displayed

	Scenario: Display Tool Line Dropdown
		Given the "Tool Line" dropdown is displayed
		When the "Tool Line" dropdown is opened
		Then the "All" dropdown should be displayed

	Scenario: Select HITACHI Tool Line All
		When the "Tool Line" dropdown is opened and "All" is selected
		Then the "Tool Line" dropdown should be displayed

	Scenario: Select Processes
		When the "Process" dropdown is opened and "1271" is selected
		And the "Process" dropdown is opened and "1272" is selected
		And the "Process" dropdown is opened and "1274" is selected
		And the "Process" dropdown is opened and "1276" is selected
		And the "Process" dropdown is opened and "1000" is selected
		And the "Process" dropdown is opened and "1217" is selected
		And the "Process" dropdown is opened and "ATM" is selected
		And the "Process" dropdown is opened and "IMO" is selected
		And the "Process" dropdown is opened and "TD1278" is selected
		Then the "Process" dropdown should be displayed

	Scenario: Select All Locations
		When the "Location" dropdown is opened and "F24" is selected
		And the "Location" dropdown is opened and "F28" is selected
		And the "Location" dropdown is opened and "F32" is selected
		Then the "Category" dropdown should be displayed

	Scenario: Select All Categories
		When the "Category" dropdown is opened and "CK" is selected
		When the "Category" dropdown is opened and "CSI" is selected
		When the "Category" dropdown is opened and "MT" is selected
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
		Then the "Equipment Stacking" highcarts graph should display a total number of "2" legend items
		# Then the "Equipment Stacking" highcharts graph should display a plot line
		Then the "Equipment Stacking" highcharts graph should display a y-axis that says "Tool Counts"
		Then the "Equipment Stacking" highcharts graph should display a plot line
	# Use actual name of y-axis

	Scenario: Navigate the tabs
		Given the "Chart" tab is displayed
		And the "Details" tab is displayed
		When the "Details" tab is clicked
		Then the "React Table" table should be displayed
		And the "React Table" table should display a total of "18" rows
		And the "React Table" table should display a total of "15" columns
		And the "React Table" table should display a column header named "Supplier"
		And the "React Table" table should display a column header named "Impact"
		#And the "React Table" table should display a column header named "Dog"
		And the "React Table" table should display a column header named "Site"
		And the "React Table" table should display "HITACHI" at row "2", column "2"



