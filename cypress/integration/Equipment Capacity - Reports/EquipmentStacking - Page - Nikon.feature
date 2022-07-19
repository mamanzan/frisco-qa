@Equip
Feature: Equipment Stacking Sidebar and Chart Supplier is Nikon

	Confirmation of supplier text on Equpment Stacking Page

	Background: Screen resolution
		Given the screen resolution is "1920X1080"

	Scenario: Open Equipment Stacking Page
		Given the "Equipment Stacking" page is visited
		Then the words "Supplier" should be displayed

	Scenario: Enter Nikon Text
		Given the "Supplier" input is displayed
		When "Nikon" is typed into the "Supplier" input
		Then the "Supplier" input should display the "Nikon" option

	Scenario: Click Nikon Button
		When the "Supplier" input "Nikon" option is selected
		Then the "Process" dropdown should be displayed

	Scenario: Select Processes
		When the "Process" dropdown is opened and "1240" is selected
		And the "Process" dropdown is opened and "1265" is selected
		And the "Process" dropdown is opened and "1268" is selected
		And the "Process" dropdown is opened and "1272" is selected
		And the "Process" dropdown is opened and "1274" is selected
		And the "Process" dropdown is opened and "1276" is selected
		And the "Process" dropdown is opened and "TD1276" is selected
		Then the "Process" dropdown should be displayed

	Scenario: Select All Locations
		When the "Location" dropdown is opened and "D1D" is selected
		When the "Location" dropdown is opened and "F11X" is selected
		When the "Location" dropdown is opened and "F15" is selected
		When the "Location" dropdown is opened and "F24" is selected
		When the "Location" dropdown is opened and "F28" is selected
		When the "Location" dropdown is opened and "F32" is selected
		When the "Location" dropdown is opened and "F68" is selected
		Then the "Category" dropdown should be displayed

	Scenario: Select All Categories
		When the "Category" dropdown is opened and "All" is selected
		Then the "Category" dropdown should be displayed

	# Scenario: Enter Entity Type
	# 	Given the "Entity Type" input is displayed
	# 	When "SNQ" is typed into the "Entity Type" input
	# 	Then the  input should display the "SNQ" option

	# ###############
	# Scenario: Click Entity Type
	# 	When the "SNQ" input "SNQ" checkbox option is selected
	# 	Then the "Process" dropdown should be displayedr

	Scenario: Click the Go button
		Given the page is cleared
		When the "GO" button is clicked
		Then the "Equipment Stacking" highcharts graph should be displayed

	Scenario: Verify Graph Data
		Given the "Equipment Stacking" highcharts graph is displayed
		Then the "Equipment Stacking" highcarts graph should display a total number of "2" legend items
		# Then the "Equipment Stacking" highcharts graph should display a plot line
		Then the "Equipment Stacking" highcharts graph should display a y-axis that says "Tool Counts"
	# Use actual name of y-axis

	Scenario: Navigate the tabs
		Given the "Chart" tab is displayed
		And the "Details" tab is displayed
		When the "Details" tab is clicked
		Then the "React Table" table should be displayed
		And the "React Table" table should display more than "15" rows
		And the "React Table" table should display a total of "15" columns
		And the "React Table" table should display a column header named "Supplier"
		And the "React Table" table should display a column header named "Impact"
		#And the "React Table" table should display a column header named "Dog"
		And the "React Table" table should display a column header named "Site"
		And the "React Table" table should display "Nikon" at row "2", column "2"



