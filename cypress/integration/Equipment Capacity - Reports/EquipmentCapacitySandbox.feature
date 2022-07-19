Feature: EquipmentCapacitySandbox

# Trying out all the hooks on the page for further refinement

# Background: Screen resolution
# 	Given the screen resolution is "1920X1080"

# Scenario: Visit the page
# 	Given the "Equipment Stacking" page is visited
# 	Then the words "Equipment Stacking" should be displayed

# Scenario: Typing input
# 	Given the "Supplier" input is displayed
# 	When "A" is typed into the "Supplier" input
# 	Then the "Supplier" input should display several options

# Scenario: Click an AMAT option
# 	When the "Supplier" input "AMAT" option is selected
# 	Then the "Tool Line" dropdown should be displayed

# Scenario: See a highcharts graph
# 	When the "GO" button is clicked
# 	Then the "Equipment Stacking" highcharts graph should be displayed
# 	Then the "Equipment Stacking" highcarts graph should display a total number of "12" legend items
# 	Then the "Equipment Stacking" highcharts graph should display a y-axis that says "Tool Counts"

# Scenario: Modify Capacity
# 	Given the "Capacity" input is displayed
# 	When the "Capacity" input has "10" typed in
# 	Then the "Equipment Stacking" highcharts graph should display a plot line

# Scenario: Navigate the tabs
# 	Given the "Chart" tab is displayed
# 	And the "Details" tab is displayed
# 	When the "Details" tab is clicked
# 	Then the "React Table" table should be displayed
# 	And the "React Table" table should display a total of "20" rows
# 	And the "React Table" table should display a total of "15" columns
# 	And the "React Table" table should display a column header named "Supplier"
# 	And the "React Table" table should display a column header named "Cat."
# 	And the "React Table" table should display a column header named "Site"
# 	And the "React Table" table should display "AMAT" at row "2", column "2"