@Equip
Feature: Equipment Stacking Table Contents

	Confirmation of table content apperance on Equpment Stacking Page

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

	Scenario: Chart Content
		Given the "Details" tab is displayed
		When the "Details" tab is clicked
		Then the "React Table" table should be displayed

	Scenario: Check Column Count
		Given the "React Table" table is displayed
		Then the "React Table" table should display a total of "15" columns

	Scenario: Check Row Count
		Given the "React Table" table is displayed
		Then the "React Table" table should display a total of "20" rows

# Scenario: Check Row Content
# 	Given the "React Table" table is displayed
# 	Then the "React Table" table should display "4200203814" at row "5", column "9"