Feature: Project Setup Sandbox
	Ensure tables are correctly displayed

	Scenario: Display Functional Area table
		Given the "POR WIF Company Mapping" page is visited
		When the "Site" dropdown is opened and "Ocotillo" is selected
		And the "Projects" dropdown is opened and "POR P1274 TI" is selected
		And the "Scenarios" dropdown is opened and "Bill Test SOC Process" is selected
		And the "ScenarioProjects" dropdown is opened and "Bill SOC Process Test" is selected
		Then the "Functional Area" table should be displayed

	Scenario: Display the CEID table
		When the "ceid" option is selected from the "PageSelection" toggle
		Then the "Ceid" table should be displayed

	Scenario: Diplay the Entity table
		When the "entity" option is selected from the "PageSelection" toggle
		Then the "Entity" table should be displayed

# Scenario: Display Project Schedules
# 	Given the "Project" page is visited
# 	When the "Action" button is clicked
# 	Then the "Schedule" table should be displayed



