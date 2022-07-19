Feature: Melros Project Admin Page Nav

	Confirmation that page navigation buttons are functional

	Background: Screen resolution
		Given the screen resolution is "1920X1080"

	Scenario: Visit the page
		Given the "Project Admin" page is visited
		Then the words "Project Administration" should be displayed

	Scenario: Project Admin Page Nav First Next
		Given the "First Page" button is displayed
		When the "Next Page" button is clicked
	# Then the "Last Page" button should be enabled
	##Then the "Next" button should be enabled - can we make this 'page x of y' text be displayed

	Scenario: Project Admin Page Nav Last
		Given the "Last Page" button is displayed
		When the "Previous Page" button is clicked
	##Then the "Previous" button should be enabled - can we make this 'page x of y' text be displayed

	Scenario: Project Admin Page Nav Previous
		Given the "Last Page" button is displayed
		When the "Previous Page" button is clicked
##Then the "Previous" button should be enabled - can we make this 'page x of y' text be displayed
