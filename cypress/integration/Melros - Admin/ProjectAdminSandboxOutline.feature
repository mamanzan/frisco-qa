@admin_page
Feature: Project Admin Sandbox

	Trying out all the hooks on the page for further refinement

	Background: Screen resolution
		Given the screen resolution is "1920X1080"

	Scenario: Visit the page
		Given the "Project Admin" page is visited
		Then the words "Project Administration" should be displayed

	Scenario Outline: Type
		Given the "<object>" input is displayed
		And the "<object>" input is cleared
		When the "<object>" input has "<word>" typed in
		Then the words "<word>" should be displayed

		Examples:
			| object         | word           |
			| Type           | TI             |
			| Schedules      | N/A            |
			| Allocation     | TPF            |
			| Last Processed | 00/00/00 00:00 |


	# Scenario: Find POR Projects
	# 	Given the "Project" input is displayed
	# 	When the "Project" input has "POR" typed in
	# 	Then the "Project Admin" table should display a total of "5" rows

	Scenario: Status
		Given the "Status" input is displayed
		When the "Status" input is cleared
		And the "Status" input has "POR" typed in
		Then the words "POR" should be displayed

	Scenario: Status Error
		Given the "Status" input is displayed
		When the "Status" input is cleared
		And the "Status" input has "TEL" typed in
		Then the words "No rows found" should be displayed

	Scenario: Status Clear
		Given the "Status" input is displayed
		When the "Status" input is cleared

	Scenario Outline: Column input checks
		Given the "<object>" input is displayed
		When the "<object>" input is cleared
		And the "<object>" input has "<word>" typed in
		Then the words "<word>" should be displayed
		# And the "<object>" input is cleared
		Examples:
			| object         | word           |
			| Type           | TI             |
			| Schedules      | N/A            |
			| Allocation     | TPF            |
			| Last Processed | 00/00/00 00:00 |


	Scenario: Type Clear
		Given the "Type" input is displayed
		When the "Status" input is cleared

	Scenario: All Projects
		Given the "Project" input is displayed
		When the "Project" input is cleared
		Then the "Project Admin" table should display more than "3" rows
		And the "Project Admin" table should display less than "100" rows

	Scenario: Last Page
		Given the "Last Page" button is displayed
		When the "Last Page" button is clicked
		Then the words "Page 1 of" should not be displayed

	Scenario: First Page
		Given the "First Page" button is displayed
		When the "First Page" button is clicked
		Then the words "Page 1 of" should be displayed

	Scenario: Next Page
		Given the "Next Page" button is displayed
		When the "Next Page" button is clicked
		Then the words "Page 2 of" should be displayed

	Scenario: Previous Page
		Given the "Previous Page" button is displayed
		When the "Previous Page" button is clicked
		Then the words "Page 1 of" should be displayed

	Scenario: Click POR
		Given the "Project Admin" table is displayed
		When the "Project Admin" table has the "POR" button clicked at row "1", column "3"
		Then the words "Save Successful!" should be displayed

	Scenario: Click WIF
		Given the "Project Admin" table is displayed
		When the "Project Admin" table has the "WIF" button clicked at row "1", column "3"
		Then the words "Save Successful!" should be displayed

	Scenario: Click BB
		Given the "Project Admin" table is displayed
		When the "Project Admin" table has the "BB" button clicked at row "1", column "4"
		Then the words "Save Successful!" should be displayed

	Scenario: Click TI
		Given the "Project Admin" table is displayed
		When the "Project Admin" table has the "TI" button clicked at row "1", column "4"
		Then the words "Save Successful!" should be displayed

	#DEV
	# Scenario: Show Schedules modal
	# 	Given the "Project Admin" table is displayed
	# 	When the "Project Admin" table has the "Schedule" link clicked at row "1", column "5"
	# 	Then the "Schedules" modal is displayed

	#INT
	Scenario: Show Schedules modal
		Given the "Project Admin" table is displayed
		When the "Project" input has "POR P1272 TI" typed in
		And the "Type" input has "TI" typed in
		And the "Project Admin" table has the "Schedule" link clicked at row "1", column "5"
		Then the "Schedules" modal is displayed

	Scenario: Schedule table has rows
		Given the "Schedules" modal is displayed
		Then the "Schedules" simple table should display at least "1" rows

	Scenario: Close the Schedules modal
		Given the "Schedules" modal is displayed
		When the "Schedules" modal OK button is clicked
		Then the "Schedules" modal is not displayed