@UDFFunctions
Feature: UDF Logical Functions
  Scenario Outline: Check UDF Logical Functions
    Given I go to UDF Logical Line Screen
    When I want to test Logical function id "<Testcase_ID>"
    And I enter logical para value "<Logical_Para1>", "<Logical_Para2>", "<Logical_Para3>", "<Logical_Para4>" and select UDF Logical function "<Logical_Functions>"
    Then I should see the correct logical result "<Logical_Result>" from "<Logical_Functions>"

    Examples:
      | Testcase_ID | Logical_Para1 | Logical_Para2 | Logical_Para3 | Logical_Para4 | Logical_Functions | Logical_Result |
      | TC1| 3 | 3 | 12 | default is false! | Switch(text; value1; result1; resultDefault) | 12 |
      | TC2| 3 | a | 12 | default is false! | Switch(text; value1; result1; resultDefault) | default is false! |
      | TC3| 3 | 3 | 12 | default is false! | Switch(text; value1; result1; resultDefault) | 12 |
      | TC4| 3 | a | 12 | default is false! | Switch(text; value1; result1; resultDefault) | default is false! |
      | TC5| a |  |  | default is false! | Switch(text; value1; result1; resultDefault) | default is false! |
      | TC6|  |  |  | default is false! | Switch(text; value1; result1; resultDefault) |  |
      | TC7|  | 5 |  | default is false! | Switch(text; value1; result1; resultDefault) | default is false! |
      | TC8| 3 | 5 | 10 | NA | AND(num1 gt.eq num2; num1 lt.eq num3) | false |
      | TC9| 7 | 5 | 10 | NA | AND(num1 gt.eq num2; num1 lt.eq num3) | true |
      | TC10| a | 5 | 10 | NA | AND(num1 gt.eq num2; num1 lt.eq num3) | false |
      | TC11| 7 | 5 | a | NA | AND(num1 gt.eq num2; num1 lt.eq num3) | false |
      | TC12| 3 | [space] | 10 | NA | AND(num1 gt.eq num2; num1 lt.eq num3) | false |
      | TC13| f | b | k | NA | AND(num1 gt.eq num2; num1 lt.eq num3) | false |
      | TC14| öäüæøåd̥æˀnsɡ ̊你好詞 #$* | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | 10 | a | OR(txt1==txt2; date1==date2) | true |
      | TC15| a | b | 06.21.2021 | 06.21.2021 | OR(txt1==txt2; date1==date2) | true |
      | TC16| öäüæøåd̥æˀnsɡ ̊你好詞 #$* | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | 06.21.2021 | 06.21.2021 | OR(txt1==txt2; date1==date2) | true |
      | TC17| 7 | 7 | a | b | OR(txt1==txt2; date1==date2) | true |
      | TC18| [space] | [space] | & | * | OR(txt1==txt2; date1==date2) | true |
      | TC19| 7 | b | Monday, 21 June 2021 12:12:15 | Monday, 21 June 2021 12:12:15 | OR(txt1==txt2; date1==date2) | true |
      | TC20| 06.21.2021 | 06.21.2021 | #$* | #$* | OR(txt1==txt2; date1==date2) | true |
      | TC21| f | b | k | k | OR(txt1==txt2; date1==date2) | false |
      | TC22| #$* | 7 | 7 | 7 | OR(txt1==txt2; date1==date2) | false |
      | TC23|  | NA | NA | NA | NOT(txt match 0-9) | true |
      | TC24| [space] | NA | NA | NA | NOT(txt match 0-9) | true |
      | TC25| #$* | NA | NA | NA | NOT(txt match 0-9) | true |
      | TC26| C@deIT | NA | NA | NA | NOT(txt match 0-9) | true |
      | TC27| 12345 | NA | NA | NA | NOT(txt match 0-9) | false |
      | TC28| CodeIT123 | NA | NA | NA | NOT(txt match 0-9) | false |
      | TC29| a | a | Condition is True! | Condition is False! | If(Expression(t; left==right); returnIfTrue; returnIfFalse) | Condition is True! |
      | TC30| Monday, 21 June 2021 12:12:15 | 06.21.2021 12:12:15 | Condition is True! | Condition is False! | If(Expression(t; left==right); returnIfTrue; returnIfFalse) | Condition is False! |
      | TC31| 11 | 11 | Condition is True! | Condition is False! | If(Expression(t; left==right); returnIfTrue; returnIfFalse) | Condition is True! |
      | TC32| ̊你好詞 | öäü | Condition is True! | Condition is False! | If(Expression(t; left==right); returnIfTrue; returnIfFalse) | Condition is False! |
      | TC33| 11 | 12 | Condition is True! | Condition is False! | If(Expression(t; left==right); returnIfTrue; returnIfFalse) | Condition is False! |
      | TC34| 2021-06-22T09:30:00 | 06-18-2021 12:00 AM | Condition is True! | Condition is False! | If(Expression(t; left==right); returnIfTrue; returnIfFalse) | Condition is False! |
      | TC35| a | a | Condition is True! | Condition is False! | If(Expression(n; left gt.eq right); returnIfTrue; returnIfFalse) | Condition is False! |
      | TC36| Monday, 21 June 2021 12:12:15 | 06.21.2021 12:12:15 | Condition is True! | Condition is False! | If(Expression(n; left gt.eq right); returnIfTrue; returnIfFalse) | Condition is False! |
      | TC37| 11 | 11 | Condition is True! | Condition is False! | If(Expression(n; left gt.eq right); returnIfTrue; returnIfFalse) | Condition is True! |
      | TC38| ̊你好詞 | öäü | Condition is True! | Condition is False! | If(Expression(n; left gt.eq right); returnIfTrue; returnIfFalse) | Condition is False! |
      | TC39| 11 | 12 | Condition is True! | Condition is False! | If(Expression(n; left gt.eq right); returnIfTrue; returnIfFalse) | Condition is False! |
      | TC40| 2021-06-22T09:30:00 | 06-18-2021 12:00 AM | Condition is True! | Condition is False! | If(Expression(n; left gt.eq right); returnIfTrue; returnIfFalse) | Condition is False! |
      | TC41| a | a | Condition is True! | Condition is False! | If(Expression(d; left lt right); returnIfTrue; returnIfFalse) | Condition is False! |
      | TC42| Monday, 21 June 2021 12:12:15 | 06.21.2021 12:12:15 | Condition is True! | Condition is False! | If(Expression(d; left lt right); returnIfTrue; returnIfFalse) | Condition is False! |
      | TC43| 11 | 11 | Condition is True! | Condition is False! | If(Expression(d; left lt right); returnIfTrue; returnIfFalse) | Condition is False! |
      | TC44| ̊你好詞 | öäü | Condition is True! | Condition is False! | If(Expression(d; left lt right); returnIfTrue; returnIfFalse) | Condition is False! |
      | TC45| 11 | 12 | Condition is True! | Condition is False! | If(Expression(d; left lt right); returnIfTrue; returnIfFalse) | Condition is False! |
      | TC46| 06-18-2021 12:00 AM | 2021-06-22T09:30:00 | Condition is True! | Condition is False! | If(Expression(d; left lt right); returnIfTrue; returnIfFalse) | Condition is True! |
      | TC47| [space] | [space] | NA | NA | LogicalExpression(t; leftValue == rightValue) | true |
      | TC48| CodeIT123 | CodeIT123 | NA | NA | LogicalExpression(t; leftValue == rightValue) | true |
      | TC49| 123 | 123 | NA | NA | LogicalExpression(t; leftValue == rightValue) | true |
      | TC50| öäüæøåd̥æˀnsɡ ̊你好詞 #$* | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(t; leftValue == rightValue) | true |
      | TC51| Monday, 21 June 2021 12:12:15 | Monday, 21 June 2021 12:12:15 | NA | NA | LogicalExpression(t; leftValue == rightValue) | true |
      | TC52| 123 | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(t; leftValue == rightValue) | false |
      | TC53|  |  | NA | NA | LogicalExpression(t; leftValue notEq rightValue) | false |
      | TC54| [space] | [space] | NA | NA | LogicalExpression(t; leftValue notEq rightValue) | false |
      | TC55| CodeIT123 | CodeIT123 | NA | NA | LogicalExpression(t; leftValue notEq rightValue) | false |
      | TC56| 123 | 123 | NA | NA | LogicalExpression(t; leftValue notEq rightValue) | false |
      | TC57| öäüæøåd̥æˀnsɡ ̊你好詞 #$* | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(t; leftValue notEq rightValue) | false |
      | TC58| Monday, 21 June 2021 12:12:15 | Monday, 21 June 2021 12:12:15 | NA | NA | LogicalExpression(t; leftValue notEq rightValue) | false |
      | TC59| 123 | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(t; leftValue notEq rightValue) | true |
      | TC60| 123 | 1234 | NA | NA | LogicalExpression(t; leftValue notEq rightValue) | true |
      | TC61| Monday, 21 June 2021 12:12:15 | 06.21.2021 12:12:15 | NA | NA | LogicalExpression(t; leftValue notEq rightValue) | true |
      | TC62|  |  | NA | NA | LogicalExpression(t; leftValue lt.eq rightValue) | true |
      | TC63| [space] | [space] | NA | NA | LogicalExpression(t; leftValue lt.eq rightValue) | true |
      | TC64| CodeIT123 | CodeIT123 | NA | NA | LogicalExpression(t; leftValue lt.eq rightValue) | true |
      | TC65| 123 | 123 | NA | NA | LogicalExpression(t; leftValue lt.eq rightValue) | true |
      | TC66| öäüæøåd̥æˀnsɡ ̊你好詞 #$* | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(t; leftValue lt.eq rightValue) | true |
      | TC67| Monday, 21 June 2021 12:12:15 | Monday, 21 June 2021 12:12:15 | NA | NA | LogicalExpression(t; leftValue lt.eq rightValue) | true |
      | TC68| 123 | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(t; leftValue lt.eq rightValue) | true |
      | TC69| 123 | 1234 | NA | NA | LogicalExpression(t; leftValue lt.eq rightValue) | true |
      | TC70| Monday, 21 June 2021 12:12:15 | 06.21.2021 12:12:15 | NA | NA | LogicalExpression(t; leftValue lt.eq rightValue) | false |
      | TC71|  |  | NA | NA | LogicalExpression(t; leftValue gt.eq rightValue) | true |
      | TC72| [space] | [space] | NA | NA | LogicalExpression(t; leftValue gt.eq rightValue) | true |
      | TC73| CodeIT123 | CodeIT123 | NA | NA | LogicalExpression(t; leftValue gt.eq rightValue) | true |
      | TC74| 123 | 123 | NA | NA | LogicalExpression(t; leftValue gt.eq rightValue) | true |
      | TC75| öäüæøåd̥æˀnsɡ ̊你好詞 #$* | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(t; leftValue gt.eq rightValue) | true |
      | TC76| Monday, 21 June 2021 12:12:15 | Monday, 21 June 2021 12:12:15 | NA | NA | LogicalExpression(t; leftValue gt.eq rightValue) | true |
      | TC77| 123 | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(t; leftValue gt.eq rightValue) | false |
      | TC78| 123 | 1234 | NA | NA | LogicalExpression(t; leftValue gt.eq rightValue) | false |
      | TC79| Monday, 21 June 2021 12:12:15 | 06.21.2021 12:12:15 | NA | NA | LogicalExpression(t; leftValue gt.eq rightValue) | true |
      | TC80|  |  | NA | NA | LogicalExpression(t; leftValue lt rightValue) | false |
      | TC81| [space] | [space] | NA | NA | LogicalExpression(t; leftValue lt rightValue) | false |
      | TC82| CodeIT123 | CodeIT123 | NA | NA | LogicalExpression(t; leftValue lt rightValue) | false |
      | TC83| 123 | 123 | NA | NA | LogicalExpression(t; leftValue lt rightValue) | false |
      | TC84| öäüæøåd̥æˀnsɡ ̊你好詞 #$* | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(t; leftValue lt rightValue) | false |
      | TC85| Monday, 21 June 2021 12:12:15 | Monday, 21 June 2021 12:12:15 | NA | NA | LogicalExpression(t; leftValue lt rightValue) | false |
      | TC86| 123 | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(t; leftValue lt rightValue) | true |
      | TC87| 123 | 1234 | NA | NA | LogicalExpression(t; leftValue lt rightValue) | true |
      | TC88| Monday, 21 June 2021 12:12:15 | 06.21.2021 12:12:15 | NA | NA | LogicalExpression(t; leftValue lt rightValue) | false |
      | TC89|  |  | NA | NA | LogicalExpression(t; leftValue gt rightValue) | false |
      | TC90| [space] | [space] | NA | NA | LogicalExpression(t; leftValue gt rightValue) | false |
      | TC91| CodeIT123 | CodeIT123 | NA | NA | LogicalExpression(t; leftValue gt rightValue) | false |
      | TC92| 123 | 123 | NA | NA | LogicalExpression(t; leftValue gt rightValue) | false |
      | TC93| öäüæøåd̥æˀnsɡ ̊你好詞 #$* | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(t; leftValue gt rightValue) | false |
      | TC94| Monday, 21 June 2021 12:12:15 | Monday, 21 June 2021 12:12:15 | NA | NA | LogicalExpression(t; leftValue gt rightValue) | false |
      | TC95| 123 | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(t; leftValue gt rightValue) | false |
      | TC96| 123 | 1234 | NA | NA | LogicalExpression(t; leftValue gt rightValue) | false |
      | TC97| Monday, 21 June 2021 12:12:15 | 06.21.2021 12:12:15 | NA | NA | LogicalExpression(t; leftValue gt rightValue) | true |
      | TC98|  |  | NA | NA | LogicalExpression(n; leftValue == rightValue) | true |
      | TC99| [space] | [space] | NA | NA | LogicalExpression(n; leftValue == rightValue) | true |
      | TC100| CodeIT123 | CodeIT123 | NA | NA | LogicalExpression(n; leftValue == rightValue) | false |
      | TC101| 123 | 123 | NA | NA | LogicalExpression(n; leftValue == rightValue) | true |
      | TC102| öäüæøåd̥æˀnsɡ ̊你好詞 #$* | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(n; leftValue == rightValue) | false |
      | TC103| Monday, 21 June 2021 12:12:15 | Monday, 21 June 2021 12:12:15 | NA | NA | LogicalExpression(n; leftValue == rightValue) | false |
      | TC104| 123 | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(n; leftValue == rightValue) | false |
      | TC105| 123 | 1234 | NA | NA | LogicalExpression(n; leftValue == rightValue) | false |
      | TC106| Monday, 21 June 2021 12:12:15 | 06.21.2021 12:12:15 | NA | NA | LogicalExpression(n; leftValue == rightValue) | false |
      | TC107|  |  | NA | NA | LogicalExpression(n; leftValue notEq rightValue) | false |
      | TC108| [space] | [space] | NA | NA | LogicalExpression(n; leftValue notEq rightValue) | false |
      | TC109| CodeIT123 | CodeIT123 | NA | NA | LogicalExpression(n; leftValue notEq rightValue) | false |
      | TC110| 123 | 123 | NA | NA | LogicalExpression(n; leftValue notEq rightValue) | false |
      | TC111| öäüæøåd̥æˀnsɡ ̊你好詞 #$* | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(n; leftValue notEq rightValue) | false |
      | TC112| Monday, 21 June 2021 12:12:15 | Monday, 21 June 2021 12:12:15 | NA | NA | LogicalExpression(n; leftValue notEq rightValue) | false |
      | TC113| 123 | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(n; leftValue notEq rightValue) | false |
      | TC114| 123 | 1234 | NA | NA | LogicalExpression(n; leftValue notEq rightValue) | true |
      | TC115| Monday, 21 June 2021 12:12:15 | 06.21.2021 12:12:15 | NA | NA | LogicalExpression(n; leftValue notEq rightValue) | false |
      | TC116|  |  | NA | NA | LogicalExpression(n; leftValue lt.eq rightValue) | true |
      | TC117| [space] | [space] | NA | NA | LogicalExpression(n; leftValue lt.eq rightValue) | true |
      | TC118| CodeIT123 | CodeIT123 | NA | NA | LogicalExpression(n; leftValue lt.eq rightValue) | false |
      | TC119| 123 | 123 | NA | NA | LogicalExpression(n; leftValue lt.eq rightValue) | true |
      | TC120| öäüæøåd̥æˀnsɡ ̊你好詞 #$* | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(n; leftValue lt.eq rightValue) | false |
      | TC121| Monday, 21 June 2021 12:12:15 | Monday, 21 June 2021 12:12:15 | NA | NA | LogicalExpression(n; leftValue lt.eq rightValue) | false |
      | TC122| 123 | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(n; leftValue lt.eq rightValue) | false |
      | TC123| 123 | 1234 | NA | NA | LogicalExpression(n; leftValue lt.eq rightValue) | true |
      | TC124| Monday, 21 June 2021 12:12:15 | 06.21.2021 12:12:15 | NA | NA | LogicalExpression(n; leftValue lt.eq rightValue) | false |
      | TC125|  |  | NA | NA | LogicalExpression(n; leftValue gt.eq rightValue) | true |
      | TC126| [space] | [space] | NA | NA | LogicalExpression(n; leftValue gt.eq rightValue) | true |
      | TC127| CodeIT123 | CodeIT123 | NA | NA | LogicalExpression(n; leftValue gt.eq rightValue) | false |
      | TC128| 123 | 123 | NA | NA | LogicalExpression(n; leftValue gt.eq rightValue) | true |
      | TC129| öäüæøåd̥æˀnsɡ ̊你好詞 #$* | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(n; leftValue gt.eq rightValue) | false |
      | TC130| Monday, 21 June 2021 12:12:15 | Monday, 21 June 2021 12:12:15 | NA | NA | LogicalExpression(n; leftValue gt.eq rightValue) | false |
      | TC131| 123 | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(n; leftValue gt.eq rightValue) | false |
      | TC132| 123 | 1234 | NA | NA | LogicalExpression(n; leftValue gt.eq rightValue) | false |
      | TC133| 1234 | 123 | NA | NA | LogicalExpression(n; leftValue gt.eq rightValue) | true |
      | TC134| Monday, 21 June 2021 12:12:15 | 06.21.2021 12:12:15 | NA | NA | LogicalExpression(n; leftValue gt.eq rightValue) | false |
      | TC135|  |  | NA | NA | LogicalExpression(n; leftValue lt rightValue) | false |
      | TC136| [space] | [space] | NA | NA | LogicalExpression(n; leftValue lt rightValue) | false |
      | TC137| CodeIT123 | CodeIT123 | NA | NA | LogicalExpression(n; leftValue lt rightValue) | false |
      | TC138| 123 | 123 | NA | NA | LogicalExpression(n; leftValue lt rightValue) | false |
      | TC139| öäüæøåd̥æˀnsɡ ̊你好詞 #$* | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(n; leftValue lt rightValue) | false |
      | TC140| Monday, 21 June 2021 12:12:15 | Monday, 21 June 2021 12:12:15 | NA | NA | LogicalExpression(n; leftValue lt rightValue) | false |
      | TC141| 123 | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(n; leftValue lt rightValue) | false |
      | TC142| 123 | 1234 | NA | NA | LogicalExpression(n; leftValue lt rightValue) | true |
      | TC143| 1234 | 123 | NA | NA | LogicalExpression(n; leftValue lt rightValue) | false |
      | TC144| Monday, 21 June 2021 12:12:15 | 06.21.2021 12:12:15 | NA | NA | LogicalExpression(n; leftValue lt rightValue) | false |
      | TC145|  |  | NA | NA | LogicalExpression(n; leftValue gt rightValue) | false |
      | TC146| [space] | [space] | NA | NA | LogicalExpression(n; leftValue gt rightValue) | false |
      | TC147| CodeIT123 | CodeIT123 | NA | NA | LogicalExpression(n; leftValue gt rightValue) | false |
      | TC148| 123 | 123 | NA | NA | LogicalExpression(n; leftValue gt rightValue) | false |
      | TC149| öäüæøåd̥æˀnsɡ ̊你好詞 #$* | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(n; leftValue gt rightValue) | false |
      | TC150| Monday, 21 June 2021 12:12:15 | Monday, 21 June 2021 12:12:15 | NA | NA | LogicalExpression(n; leftValue gt rightValue) | false |
      | TC151| 123 | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(n; leftValue gt rightValue) | false |
      | TC152| 123 | 1234 | NA | NA | LogicalExpression(n; leftValue gt rightValue) | false |
      | TC153| 1234 | 123 | NA | NA | LogicalExpression(n; leftValue gt rightValue) | true |
      | TC154| Monday, 21 June 2021 12:12:15 | 06.21.2021 12:12:15 | NA | NA | LogicalExpression(n; leftValue gt rightValue) | false |
      | TC155|  |  | NA | NA | LogicalExpression(d; leftValue == rightValue) | true |
      | TC156| [space] | [space] | NA | NA | LogicalExpression(d; leftValue == rightValue) | true |
      | TC157| CodeIT123 | CodeIT123 | NA | NA | LogicalExpression(d; leftValue == rightValue) | false |
      | TC158| 123 | 123 | NA | NA | LogicalExpression(d; leftValue == rightValue) | false |
      | TC159| öäüæøåd̥æˀnsɡ ̊你好詞 #$* | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(d; leftValue == rightValue) | false |
      | TC160| Monday, 21 June 2021 12:12:15 | Monday, 21 June 2021 12:12:15 | NA | NA | LogicalExpression(d; leftValue == rightValue) | true |
      | TC161| 123 | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(d; leftValue == rightValue) | false |
      | TC162| 123 | 1234 | NA | NA | LogicalExpression(d; leftValue == rightValue) | false |
      | TC163| 1234 | 123 | NA | NA | LogicalExpression(d; leftValue == rightValue) | false |
      | TC164| Monday, 21 June 2021 12:12:15 | 06.21.2021 12:12:15 | NA | NA | LogicalExpression(d; leftValue == rightValue) | true |
      | TC165| 6/18/2021 9:30:20 AM | 06.22.2021 12:12:15 | NA | NA | LogicalExpression(d; leftValue == rightValue) | false |
      | TC166| 2021-06-22T09:30:00 | 06-18-2021 12:00 AM | NA | NA | LogicalExpression(d; leftValue == rightValue) | false |
      | TC167|  |  | NA | NA | LogicalExpression(d; leftValue notEq rightValue) | false |
      | TC168| [space] | [space] | NA | NA | LogicalExpression(d; leftValue notEq rightValue) | false |
      | TC169| CodeIT123 | CodeIT123 | NA | NA | LogicalExpression(d; leftValue notEq rightValue) | false |
      | TC170| 123 | 123 | NA | NA | LogicalExpression(d; leftValue notEq rightValue) | false |
      | TC171| öäüæøåd̥æˀnsɡ ̊你好詞 #$* | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(d; leftValue notEq rightValue) | false |
      | TC172| Monday, 21 June 2021 12:12:15 | Monday, 21 June 2021 12:12:15 | NA | NA | LogicalExpression(d; leftValue notEq rightValue) | false |
      | TC173| 123 | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(d; leftValue notEq rightValue) | false |
      | TC174| 123 | 1234 | NA | NA | LogicalExpression(d; leftValue notEq rightValue) | false |
      | TC175| 1234 | 123 | NA | NA | LogicalExpression(d; leftValue notEq rightValue) | false |
      | TC176| Monday, 21 June 2021 12:12:15 | 06.21.2021 12:12:15 | NA | NA | LogicalExpression(d; leftValue notEq rightValue) | false |
      | TC177| 6/18/2021 9:30:20 AM | 06.22.2021 12:12:15 | NA | NA | LogicalExpression(d; leftValue notEq rightValue) | true |
      | TC178| 2021-06-22T09:30:00 | 06-18-2021 12:00 AM | NA | NA | LogicalExpression(d; leftValue notEq rightValue) | true |
      | TC179|  |  | NA | NA | LogicalExpression(d; leftValue lt.eq rightValue) | true |
      | TC180| [space] | [space] | NA | NA | LogicalExpression(d; leftValue lt.eq rightValue) | true |
      | TC181| CodeIT123 | CodeIT123 | NA | NA | LogicalExpression(d; leftValue lt.eq rightValue) | false |
      | TC182| 123 | 123 | NA | NA | LogicalExpression(d; leftValue lt.eq rightValue) | false |
      | TC183| öäüæøåd̥æˀnsɡ ̊你好詞 #$* | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(d; leftValue lt.eq rightValue) | false |
      | TC184| Monday, 21 June 2021 12:12:15 | Monday, 21 June 2021 12:12:15 | NA | NA | LogicalExpression(d; leftValue lt.eq rightValue) | true |
      | TC185| 123 | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(d; leftValue lt.eq rightValue) | false |
      | TC186| 123 | 1234 | NA | NA | LogicalExpression(d; leftValue lt.eq rightValue) | false |
      | TC187| 1234 | 123 | NA | NA | LogicalExpression(d; leftValue lt.eq rightValue) | false |
      | TC188| Monday, 21 June 2021 12:12:15 | 06.21.2021 12:12:15 | NA | NA | LogicalExpression(d; leftValue lt.eq rightValue) | true |
      | TC189| 6/18/2021 9:30:20 AM | 06.22.2021 12:12:15 | NA | NA | LogicalExpression(d; leftValue lt.eq rightValue) | true |
      | TC190| 2021-06-22T09:30:00 | 06-18-2021 12:00 AM | NA | NA | LogicalExpression(d; leftValue lt.eq rightValue) | false |
      | TC191|  |  | NA | NA | LogicalExpression(d; leftValue gt.eq rightValue) | true |
      | TC192| [space] | [space] | NA | NA | LogicalExpression(d; leftValue gt.eq rightValue) | true |
      | TC193| CodeIT123 | CodeIT123 | NA | NA | LogicalExpression(d; leftValue gt.eq rightValue) | false |
      | TC194| 123 | 123 | NA | NA | LogicalExpression(d; leftValue gt.eq rightValue) | false |
      | TC195| öäüæøåd̥æˀnsɡ ̊你好詞 #$* | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(d; leftValue gt.eq rightValue) | false |
      | TC196| Monday, 21 June 2021 12:12:15 | Monday, 21 June 2021 12:12:15 | NA | NA | LogicalExpression(d; leftValue gt.eq rightValue) | true |
      | TC197| 123 | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(d; leftValue gt.eq rightValue) | false |
      | TC198| 123 | 1234 | NA | NA | LogicalExpression(d; leftValue gt.eq rightValue) | false |
      | TC199| 1234 | 123 | NA | NA | LogicalExpression(d; leftValue gt.eq rightValue) | false |
      | TC200| Monday, 21 June 2021 12:12:15 | 06.21.2021 12:12:15 | NA | NA | LogicalExpression(d; leftValue gt.eq rightValue) | true |
      | TC201| 6/18/2021 9:30:20 AM | 06.22.2021 12:12:15 | NA | NA | LogicalExpression(d; leftValue gt.eq rightValue) | false |
      | TC202| 2021-06-22T09:30:00 | 06-18-2021 12:00 AM | NA | NA | LogicalExpression(d; leftValue gt.eq rightValue) | true |
      | TC203|  |  | NA | NA | LogicalExpression(d; leftValue lt rightValue) | false |
      | TC204| [space] | [space] | NA | NA | LogicalExpression(d; leftValue lt rightValue) | false |
      | TC205| CodeIT123 | CodeIT123 | NA | NA | LogicalExpression(d; leftValue lt rightValue) | false |
      | TC206| 123 | 123 | NA | NA | LogicalExpression(d; leftValue lt rightValue) | false |
      | TC207| öäüæøåd̥æˀnsɡ ̊你好詞 #$* | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(d; leftValue lt rightValue) | false |
      | TC208| Monday, 21 June 2021 12:12:15 | Monday, 21 June 2021 12:12:15 | NA | NA | LogicalExpression(d; leftValue lt rightValue) | false |
      | TC209| 123 | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(d; leftValue lt rightValue) | false |
      | TC210| 123 | 1234 | NA | NA | LogicalExpression(d; leftValue lt rightValue) | false |
      | TC211| 1234 | 123 | NA | NA | LogicalExpression(d; leftValue lt rightValue) | false |
      | TC212| Monday, 21 June 2021 12:12:15 | 06.21.2021 12:12:15 | NA | NA | LogicalExpression(d; leftValue lt rightValue) | false |
      | TC213| 6/18/2021 9:30:20 AM | 06.22.2021 12:12:15 | NA | NA | LogicalExpression(d; leftValue lt rightValue) | true |
      | TC214| 2021-06-22T09:30:00 | 06-18-2021 12:00 AM | NA | NA | LogicalExpression(d; leftValue lt rightValue) | false |
      | TC215|  |  | NA | NA | LogicalExpression(d; leftValue gt rightValue) | false |
      | TC216| [space] | [space] | NA | NA | LogicalExpression(d; leftValue gt rightValue) | false |
      | TC217| CodeIT123 | CodeIT123 | NA | NA | LogicalExpression(d; leftValue gt rightValue) | false |
      | TC218| 123 | 123 | NA | NA | LogicalExpression(d; leftValue gt rightValue) | false |
      | TC219| öäüæøåd̥æˀnsɡ ̊你好詞 #$* | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(d; leftValue gt rightValue) | false |
      | TC220| Monday, 21 June 2021 12:12:15 | Monday, 21 June 2021 12:12:15 | NA | NA | LogicalExpression(d; leftValue gt rightValue) | false |
      | TC221| 123 | öäüæøåd̥æˀnsɡ ̊你好詞 #$* | NA | NA | LogicalExpression(d; leftValue gt rightValue) | false |
      | TC222| 123 | 1234 | NA | NA | LogicalExpression(d; leftValue gt rightValue) | false |
      | TC223| 1234 | 123 | NA | NA | LogicalExpression(d; leftValue gt rightValue) | false |
      | TC224| Monday, 21 June 2021 12:12:15 | 06.21.2021 12:12:15 | NA | NA | LogicalExpression(d; leftValue gt rightValue) | false |
      | TC225| 6/18/2021 9:30:20 AM | 06.22.2021 12:12:15 | NA | NA | LogicalExpression(d; leftValue gt rightValue) | false |
      | TC226| 2021-06-22T09:30:00 | 06-18-2021 12:00 AM | NA | NA | LogicalExpression(d; leftValue gt rightValue) | true |
      | TC227| 123 | ^(\(?\+?[0-9]*\)?)?[0-9_\- \(\)]*$ | NA | NA | RegexIsMatch(text; regexPattern) | true |
      | TC228|  | ^(\(?\+?[0-9]*\)?)?[0-9_\- \(\)]*$ | NA | NA | RegexIsMatch(text; regexPattern) | true |
      | TC229| [space] | ^(\(?\+?[0-9]*\)?)?[0-9_\- \(\)]*$ | NA | NA | RegexIsMatch(text; regexPattern) | true |
      | TC230| 123ABC | ^(\(?\+?[0-9]*\)?)?[0-9_\- \(\)]*$ | NA | NA | RegexIsMatch(text; regexPattern) | false |
      | TC231| ABC123 | [0-9] | NA | NA | RegexIsMatch(text; regexPattern) | true |
      | TC232| ABC | [0-9] | NA | NA | RegexIsMatch(text; regexPattern) | false |
      | TC233| Welcome to codeit! | come | NA | NA | Contains(text; lookupValue) | true |
      | TC234| öäüæøåd̥æˀnsɡ ̊你好詞 #$* | 你好詞 | NA | NA | Contains(text; lookupValue) | true |
      | TC235|  |  | NA | NA | Contains(text; lookupValue) | true |
      | TC236| Welcome to codeit! |  | NA | NA | Contains(text; lookupValue) | true |
      | TC237|  | aaa | NA | NA | Contains(text; lookupValue) | false |
      | TC238| Welcome to codeit! | test | NA | NA | Contains(text; lookupValue) | false |
      | TC239| Welcome to codeit! | Wel | NA | NA | StartWith(text; lookupValue) | true |
      | TC240|  |  | NA | NA | StartWith(text; lookupValue) | true |
      | TC241| Welcome to codeit! |  | NA | NA | StartWith(text; lookupValue) | true |
      | TC242|  | aaa | NA | NA | StartWith(text; lookupValue) | false |
      | TC243| Welcome to codeit! | come | NA | NA | StartWith(text; lookupValue) | false |
      | TC244| Welcome to codeit! | it! | NA | NA | EndWith(text; lookupValue) | true |
      | TC245|  |  | NA | NA | EndWith(text; lookupValue) | true |
      | TC246| Welcome to codeit! |  | NA | NA | EndWith(text; lookupValue) | true |
      | TC247|  | aaa | NA | NA | EndWith(text; lookupValue) | false |
      | TC248| Welcome to codeit! | come | NA | NA | EndWith(text; lookupValue) | false |
      | TC249|  | NA | NA | NA | IsNullOrEmpty(text) | true |
      | TC250| [space] | NA | NA | NA | IsNullOrEmpty(text) | false |
      | TC251| aaa | NA | NA | NA | IsNullOrEmpty(text) | false |
      | TC252|  | NA | NA | NA | IsNullOrWhiteSpace(text) | true |
      | TC253| [space] | NA | NA | NA | IsNullOrWhiteSpace(text) | true |
      | TC254| aaa | NA | NA | NA | IsNullOrWhiteSpace(text) | false |

