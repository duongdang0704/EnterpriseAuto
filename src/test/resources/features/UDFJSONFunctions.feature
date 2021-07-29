@UDFFunctions
Feature: UDF Json Functions
  Scenario Outline: Check Json Functions
    Given I go to UDF Json Line Screen
    When I start to test Json testcase named "<Json_Testcase_Name>"
    And I enter json para value "<Json_Para1>", "<Json_Para2>", "<Json_Para3>" and select UDF Json function "<Json_Function>"
    Then I should see the correct Json result of 2 files "<Json_Testcase_Name>" and "<Json_Result_File>"

    Examples:
      | Json_Testcase_Name | Json_Para1 | Json_Para2 | Json_Para3 | Json_Function | Json_Result_File |
      | GetObject_TC1 | .\Data\Books.json | $.store.* | NA | GetObject(jsonString, jsonPath) | Json_GetObject_TC1 |
      | GetObject_TC2 | .\Data\Books.json | $.store.bicycle.color | NA | GetObject(jsonString, jsonPath) | Json_GetObject_TC2 |
      | GetObject_TC3 | .\Data\Books.json | $.store..price | NA | GetObject(jsonString, jsonPath) | Json_GetObject_TC3 |
      | GetObject_TC4 | .\Data\Books.json | $..price | NA | GetObject(jsonString, jsonPath) | Json_GetObject_TC4 |
      | GetObject_TC5 | .\Data\Books.json | $.store.book[*] | NA | GetObject(jsonString, jsonPath) | Json_GetObject_TC5 |
      | GetObject_TC6 | .\Data\Books.json | $..book[*] | NA | GetObject(jsonString, jsonPath) | Json_GetObject_TC6 |
      | GetObject_TC7 | .\Data\Books.json | $..book[*].title | NA | GetObject(jsonString, jsonPath) | Json_GetObject_TC7 |
      | GetObject_TC8 | .\Data\Books.json | $..book[0] | NA | GetObject(jsonString, jsonPath) | Json_GetObject_TC8 |
      | GetObject_TC9 | .\Data\Books.json | $..book[0].title | NA | GetObject(jsonString, jsonPath) | Json_GetObject_TC9 |
      | GetObject_TC10 | .\Data\Books.json | $..book[0,1].title | NA | GetObject(jsonString, jsonPath) | Json_GetObject_TC10 |
      | GetObject_TC11 | .\Data\Books.json | $..book[:2].title | NA | GetObject(jsonString, jsonPath) | Json_GetObject_TC11 |
      | GetObject_TC12 | .\Data\Books.json | $..book[-1:].title | NA | GetObject(jsonString, jsonPath) | Json_GetObject_TC12 |
#    | GetObject_TC13 | .\Data\Books.json | $..book[(@.length-1)].title | NA | GetObject(jsonString, jsonPath) | Json_GetObject_TC13 |
      | GetObject_TC14 | .\Data\Books.json | $..book[?(@.author=='J.R.R. Tolkien')].title | NA | GetObject(jsonString, jsonPath) | Json_GetObject_TC14 |
      | GetObject_TC15 | .\Data\Books.json | $..book[?(@.isbn)] | NA | GetObject(jsonString, jsonPath) | Json_GetObject_TC15 |
#    | GetObject_TC16 | .\Data\Books.json | $..book[?(!@.isbn)] | NA | GetObject(jsonString, jsonPath) | Json_GetObject_TC16 |
      | GetObject_TC17 | .\Data\Books.json | $..book[?(@.price < 10)] | NA | GetObject(jsonString, jsonPath) | Json_GetObject_TC17 |
      | GetObject_TC18 | .\Data\Books.json | $..book[?(@.price > $.expensive)] | NA | GetObject(jsonString, jsonPath) | Json_GetObject_TC18 |
      | GetObject_TC19 | .\Data\Books.json | $..book[?(@.author =~ /.*Tolkien/i)] | NA | GetObject(jsonString, jsonPath) | Json_GetObject_TC19 |
      | GetObject_TC20 | .\Data\Books.json | $..book[?(@.category == 'fiction' \|\| @.category == 'reference')] | NA | GetObject(jsonString, jsonPath) | Json_GetObject_TC20 |
      | GetObject_TC21 | .\Data\Books.json | $..* | NA | GetObject(jsonString, jsonPath) | Json_GetObject_TC21 |
      | GetProperty_TC1 | .\Data\Books.json | $..book[1].category | NA | GetProperty(jsonString, jsonPath) | Json_GetProperty_TC1 |
      | GetProperty_TC2 | .\Data\InvalidJsonFormat.json | $..category | NA | GetProperty(jsonString, jsonPath) | ReturnEmpty |
      | GetJsonObjectAt_TC1 | .\Data\JsonArray.json | 1 | NA | GetJsonObjectAt(jsonArrayObject, index) | Json_GetJsonObjectAt_TC1 |
      | GetJsonObjectAt_TC2 | .\Data\JsonArray.json | 5 | NA | GetJsonObjectAt(jsonArrayObject, index) | ReturnEmpty |
      | GetJsonObjectAt_TC3 | .\Data\JsonArray.json | -1 | NA | GetJsonObjectAt(jsonArrayObject, index) | ReturnEmpty |
      | GetJsonObjectAt_TC4 | .\Data\JsonArray.json | abc | NA | GetJsonObjectAt(jsonArrayObject, index) | ReturnEmpty |
      | SetProperty_TC1 | .\Data\Books.json | $.store..price | 40 | SetProperty(jsonString, jsonPath, value) | Json_SetProperty_TC1 |
      | SetProperty_TC2 | .\Data\Books.json | $.store..pricetest | 40 | SetProperty(jsonString, jsonPath, value) | ReturnEmpty |
      | SetProperty_TC3 | .\Data\Books.json | $.store..pricetest |  | SetProperty(jsonString, jsonPath, value) | ReturnEmpty |

