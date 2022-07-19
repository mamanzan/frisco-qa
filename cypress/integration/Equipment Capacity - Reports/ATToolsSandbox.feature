@Proj
Feature: ATTools Sandbox

	Trying out all the hooks on the page for further refinement

	Background: Screen resolution
		Given the screen resolution is "1920X1080"

	Scenario: Visit the page
		Given the "AT Tools" page is visited
		And the app waits for "5" seconds
		Then the words "AT Tools" should be displayed

	Scenario: Toggle States
		Given the "PO State" toggle is visible
		When the "PO State" toggle "Open" option is selected
		Then the "Tools" hands-on-table should display

	Scenario: Check a cell in hands-on-table
		Given the "Tools" hands-on-table is displayed
		Then the "Tools" hands-on-table should display "CH" at row "1", column "3"

	Scenario Outline: Checking headers
		Given the "Tools" hands-on-table is displayed
		Then the "Tools" hands-on-table should display a column header named "<header>"
		Examples:
			| header      |
			| Supplier    |
			| Site        |
			| PO #        |
			| PO\nLine    |
			| Description |

	Scenario: Work with PO # 3001948625
		Given the "ATTools Search" input is displayed
		When the "ATTools Search" input has "3001948625" typed in
		Then the "Tools" hands-on-table should display a total of "1" rows

	Scenario: Click the wrench
		Given the "Tools" hands-on-table is displayed
		When the "Tools" hands-on-table has the cell at row "1", column "1" clicked
		Then the "rightSidebar" should be displayed

	Scenario: Interact with details panel
		Given the 'rightSidebar' is displayed
		When the "Factory Comments" text area has "Mike" typed in
		And the "Critical Path" toggle "Yes" option is selected
		And the "AT Help Needed" toggle "Yes" option is selected
		And the "Funding Cycle (GSM)" dropdown is opened and "December" is selected
		And the "CND" input has "2020-03-03" typed in
		And the "Entity" input has "Zzz" typed in
		And the "Close" button is clicked
		Then the 'rightSidebar' should not be displayed


