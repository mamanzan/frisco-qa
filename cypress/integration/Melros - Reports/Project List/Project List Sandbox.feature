Feature: Project List Sandbox

	Basic tests of the Project List page, TODO: write more tests :)

	Background: Screen resolution
		Given the screen resolution is "1920X1080"

	Scenario: Visit the page
		Given the "Project List" page is visited
		And the app waits for "5" seconds
		Then the words "Project List" should be displayed

	Scenario: View Manual Columns
		Given the "Manual" button is displayed
		When the "Manual" button is clicked
		And the app waits for "5" seconds
		Then the "Projects" hands-on-table should display

	Scenario Outline: Checking Manual headers
		Given the "Projects" hands-on-table is displayed
		Then the "Projects" hands-on-table should display a column header named "<header>"
		Examples:
			| header     |
			| Project    |
			| Site       |
			| Type       |
			| Allocation |

	Scenario: View TPF Columns
		Given the "TPF" button is displayed
		When the "TPF" button is clicked
		And the app waits for "5" seconds
		Then the "Projects" hands-on-table should display

	Scenario Outline: Checking Manual headers
		Given the "Projects" hands-on-table is displayed
		Then the "Projects" hands-on-table should display a column header named "<header>"
		Examples:
			| header          |
			| Project         |
			| Site            |
			| Type            |
			| Start Date      |
			| End Date        |
			| Profile         |
			| Allocation      |
			| Arch Contractor |
			| Arch Lbr %      |
