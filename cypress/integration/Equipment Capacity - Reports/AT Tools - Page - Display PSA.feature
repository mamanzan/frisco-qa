@PSA
Feature: AT Tools

	Confirmation of Screen content on AT Tools Page

	Background: Screen resolution
		Given the screen resolution is "1920X1080"

	Scenario: Open AT Tools Page - confirm Column Headerss
		Given the "AT Tools" page is visited
		When the app waits for "5" seconds
		Then the words "Supplier" should be displayed
		And the words "Site" should be displayed
		And the words "PO #" should be displayed
		And the words "PO" should be displayed
		And the words "Line" should be displayed
		And the words "Description" should be displayed
		And the words "Entity" should be displayed
		And the words "RDD" should be displayed
		And the words "STD" should be displayed
		And the words "SDD" should be displayed
		And the words "DDRDD" should be displayed
		And the words "RDD/SDD" should be displayed
		And the words "Gap" should be displayed
		And the words "Comments" should be displayed
		And the words "Critical" should be displayed

	Scenario: Confirm Left Side Bar hidden
		# Given the "AT Tools" page is visited
		Given the "button_leftSidebar" button is displayed
		When the "button_leftSidebar" button is clicked
		Then the words "State" should not be displayed
		And the words "Open" should not be displayed
		And the words "Inventoried" should not be displayed
		And the words "All" should not be displayed
		And the words "Help Need" should not be displayed
		And the words "Critical" should not be displayed
		And the words "Include Prod" should not be displayed
		And the words "Missing STD" should not be displayed
		And the words "Multi-edit" should not be displayed

	Scenario: Confirm Left Side Bar is returned
		Given the "button_leftSidebar" button is displayed
		When the "button_leftSidebar" button is clicked
		Then the "leftSidebar" page is displayed
		And  the words "State" should be displayed
		And the words "Open" should be displayed
		And the words "Inventoried" should be displayed
		And the words "All" should be displayed
		And the words "Help Need" should be displayed
		And the words "Critical" should be displayed
		And the words "Include Prod" should be displayed
		And the words "Missing STD" should be displayed
		And the words "Multi-edit" should be displayed


	Scenario: Open AT Tools Page - confirm Display Filters and Toggles

	# And the leftSidebar
	# And the "Multi-edit" toggle is visible  -   this didn't work
	# And the leftSidebar

	#  are the yes/No buttons still considered a toggle?   yes
	#  if not, how do I qualify the Y/N options within each filter?
	#   can I represent the wrench?  in column 1?  -  no hook yet
	#    can we script the note icons upper in the left cells for dates & gaps?  -  need hook
	#   Not sure how to code for the leftSidebar syntax

	# given the leftSidebar is clicked

	Scenario: Confirm Search input PO # 4200180597
		# Given the "ATTools Search " input is displayed  -   doesn't work
		Given the "ATTools Search " input is displayed
		# When the "PO Search" input is cleared
		When the "ATTools Search" input has "4200180597" typed in
		Then the words "AT Tools" should be displayed
		# And the “AT Tools” button is displayed
		# And the “AT Tools” button should be enabled
		And the words "4200180597" should be displayed
		And the words "SS" should be displayed
		And the words "NOZZLE BODY ASSEMBLLY (NO PRECISING)" should be displayed
		And the words "HIRATA CORPORATION OF AMERICA" should be displayed
		And the words "4/11/2019" should be displayed
		And the words "6/26/2019" should be displayed
		And the words "6/24/2019" should be displayed

	Scenario: Toggle States
		Given the "State" toggle is visible
		When the "State" toggle "Open" option is selected
		Then the "Tools" hands-on-table should display

	Scenario: Check a cell in hands-on-table
		Given the "Tools" hands-on-table is displayed
		Then the "Tools" hands-on-table should display "CH" at row "1", column "3"

