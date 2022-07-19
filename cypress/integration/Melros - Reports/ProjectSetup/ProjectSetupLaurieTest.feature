@laurie
Feature: Admin Melros Project setup

	Feature Description Laurie's first test case ever!
	Scenario: Scenario Check Rows for DI
		Given the "POR WIF Company Mapping" page is visited
		When the "Site" dropdown is opened and "Ocotillo" is selected
		And the "Projects" dropdown is opened and "POR P1274 TI" is selected
		And the "Scenarios" dropdown is opened and "Bill Test SOC Process" is selected
		And the "ScenarioProjects" dropdown is opened and "Bill SOC Process Test" is selected
		And the "FA/FAT" dropdown is opened and "DI" is selected
		Then the "Functional Area" hands-on-table should display a total of "1" rows
	Scenario: Scenario Check Rows for DI
		When the "ceid" option is selected from the "PageSelection" toggle
		Then the "Ceid" hands-on-table should display a total of "4" rows