Feature: UDF Table Function

  Scenario Outline: Check UDF Table Functions
    Given I go to UDF Table Line Screen
    When I start to test table function id "<Testcase_ID>"
    And I enter table para value "<Table_Para2>", "<Table_Para3>" and select UDF Table function "<Table_Functions>"
    Then I should see the correct table result "<Table_Result>" from "<Table_Functions>"

    Examples:
      | Testcase_ID | Table_Para2 | Table_Para3 | Table_Functions | Table_Result |
      | TC1 | 0 | 0 | GetTableFieldItem(tableText; row; column) | 1 |
      | TC2 | 2 | 2 | GetTableFieldItem(tableText; row; column) | GetDay(dateTime) |
      | TC3 | 5 | 5 | GetTableFieldItem(tableText; row; column) |  |
      | TC4 | 2 | -1 | GetTableFieldItem(tableText; row; column) |  |
      | TC5 | a | b | GetTableFieldItem(tableText; row; column) |  |
      | TC6 | 1 |  | GetTableFieldItem(tableText; row; column) |  |
      | TC7 | 1 | 2 | GetTableFieldItem(tableText; row; column) | Abs(num) |
      | TC8 | 4 | 8 | GetTableFieldItem(tableText; row; column) |  |
      | TC9 | 6 | 6 | GetTableFieldItem(tableText; row; column) |  |
      | TC10 | a | b | GetTableFieldItem(tableText; row; column) |  |
      | TC11 | 0 | 1 | GetTableFieldRow(tableText; row; rowTo_opt) | 1#Text#GetText(text)#6/21/2021#¤2#Number#Abs(num)#6/22/2021#¤ |
      | TC12 | 0 |  | GetTableFieldRow(tableText; row; rowTo_opt) | 1#Text#GetText(text)#6/21/2021#¤ |
      | TC13 | a | b | GetTableFieldRow(tableText; row; rowTo_opt) |  |
      | TC14 | 2 | NA | GetTableRowCount(tableText) | 5 |
      | TC15 | 2 | NA | GetTableRowColumnCount(tableText; row) | 4 |
      | TC16 | Logical | NA | IndexOf(tr; f; text; searchText) | 3 |
      | TC17 | 7/21/2021 | NA | IndexOf(tr; f; text; searchText) | 2 |
      | TC18 | aaa | NA | IndexOf(tr; f; text; searchText) | -1 |
      | TC19 | 1 | NA | GetTableColumns(tableText; index1, index2) | Text#¤Number#¤DateTime#¤Logical#¤Table#¤ |
      | TC20 | 0,3 | NA | GetTableColumns(tableText; index1, index2) | 1#6/21/2021#¤2#6/22/2021#¤3#7/21/2021#¤4#6/20/2021#¤5#6/23/2021#¤ |
      | TC21 | 7 | NA | GetTableColumns(tableText; index1, index2) | ¤¤¤¤¤ |
      | TC22 | a | NA | GetTableColumns(tableText; index1, index2) |  |
      | TC23 | 0 | NA | GetTableColumnStats(avg; tableText; columnIndex) | 3 |
      | TC24 | 1 | NA | GetTableColumnStats(avg; tableText; columnIndex) | 0 |
      | TC25 | 7 | NA | GetTableColumnStats(avg; tableText; columnIndex) |  |
      | TC26 | 0 | NA | SortTableField(text; colIndex1; n; desc) | 5#Table#GetTableRowCount(tableText)#6/23/2021#¤4#Logical#IsNullOrEmpty(text)#6/20/2021#¤3#DateTime#GetDay(dateTime)#7/21/2021#¤2#Number#Abs(num)#6/22/2021#¤1#Text#GetText(text)#6/21/2021#¤ |
      | TC27 | 1 | NA | SortTableField(text; colIndex1; n; desc) | 1#Text#GetText(text)#6/21/2021#¤2#Number#Abs(num)#6/22/2021#¤3#DateTime#GetDay(dateTime)#7/21/2021#¤4#Logical#IsNullOrEmpty(text)#6/20/2021#¤5#Table#GetTableRowCount(tableText)#6/23/2021#¤ |
      | TC28 | 7 | NA | SortTableField(text; colIndex1; n; desc) | 1#Text#GetText(text)#6/21/2021#¤2#Number#Abs(num)#6/22/2021#¤3#DateTime#GetDay(dateTime)#7/21/2021#¤4#Logical#IsNullOrEmpty(text)#6/20/2021#¤5#Table#GetTableRowCount(tableText)#6/23/2021#¤ |
      | TC29 | a | NA | SortTableField(text; colIndex1; n; desc) |  |
      | TC30 | NA | NA | Transpose(tableText) | 1#2#3#4#5#¤Text#Number#DateTime#Logical#Table#¤GetText(text)#Abs(num)#GetDay(dateTime)#IsNullOrEmpty(text)#GetTableRowCount(tableText)#¤6/21/2021#6/22/2021#7/21/2021#6/20/2021#6/23/2021#¤ |

#      | AddCalculatedColumn(text; formula) |
#      | GetTableFromQueue(ClientGroup; component) |
#      | GetTableFromProfile(clientGroup; component) |
#      | MergeTables(fieldName1; fieldName2) |

