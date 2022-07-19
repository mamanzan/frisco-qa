@admin_page
Feature: Melros ProjectAdmin - Filters

	Trying out all the hooks on the page for further refinement

	Background: Screen resolution
		Given the screen resolution is "1920X1080"

	Scenario: Visit the page
		Given the "Project Admin" page is visited
		Then the words "Project Administration" should be displayed

	Scenario Outline: Column input checks TI TPF IR
		Given the "<object>" input is displayed
		When the "<object>" input is cleared
		And the "<object>" input has "<word>" typed in
		Then the words "<word>" should be displayed
		Examples:
			| object         | word           |
			| Type           | TI             |
			| Schedules      | N/A            |
			| Allocation     | TPF            |
			| Last Processed | 00/00/00 00:00 |
			| Location       | Ireland        |


	Scenario Outline: Clear Column input TI TPF IR
		Given the "<object>" input is displayed
		When the "<object>" input is cleared
		Examples:
			| object         | word           |
			| Type           | TI             |
			| Schedules      | N/A            |
			| Allocation     | TPF            |
			| Last Processed | 00/00/00 00:00 |
			| Location       | Ireland        |


	Scenario Outline: Column input checks BB Sched Split
		Given the "<object>" input is displayed
		When the "<object>" input is cleared
		And the "<object>" input has "<word>" typed in
		Then the words "<word>" should be displayed
		Examples:
			| object     | word  |
			| Type       | BB    |
			| Schedules  | 0     |
			| Allocation | Split |

	Scenario Outline: Clear input checks BB Sched Split
		Given the "<object>" input is displayed
		When the "<object>" input is cleared
		Examples:
			| object     | word  |
			| Type       | BB    |
			| Schedules  | 1     |
			| Allocation | Split |

	Scenario Outline: Column input checks WIF TI Sched
		Given the "<object>" input is displayed
		When the "<object>" input is cleared
		And the "<object>" input has "<word>" typed in
		Then the words "<word>" should be displayed
		Examples:
			| object     | word   |
			| Status     | WIF    |
			| Type       | TI     |
			| Schedules  | 0      |
			| Allocation | Linear |

	Scenario Outline: Clear input checks WIF TI Sched
		Given the "<object>" input is displayed
		When the "<object>" input is cleared
		Examples:
			| object     | word   |
			| Status     | WIF    |
			| Type       | TI     |
			| Schedules  | 0      |
			| Allocation | Linear |

	Scenario Outline: Column input checks Ocotillo POR
		Given the "<object>" input is displayed
		When the "<object>" input is cleared
		And the "<object>" input has "<word>" typed in
		Then the words "<word>" should be displayed
		Examples:
			| object     | word     |
			| Location   | Asia     |
			| Allocation | Weighted |

	Scenario Outline: Clear  input checks Ocotillo POR
		Given the "<object>" input is displayed
		When the "<object>" input is cleared
		Examples:
			| object     | word     |
			| Location   | Asia     |
			| Allocation | Weighted |


	Scenario Outline: Column input checks Standard Cost Baselineing
		Given the "<object>" input is displayed
		When the "<object>" input is cleared
		And the "<object>" input has "<word>" typed in
		Then the words "<word>" should be displayed
		Examples:
			| object     | word     |
			| Location   | Standard |
			| Allocation | Split    |

	Scenario Outline: Column input checks Standard Cost Baselineing
		Given the "<object>" input is displayed
		When the "<object>" input is cleared
		Examples:
			| object     | word                      |
			| Location   | Standard Cost Baselineing |
			| Allocation | Split                     |