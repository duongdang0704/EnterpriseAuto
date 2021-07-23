@UDFFunctions
Feature: UDF Number Functions

  Scenario Outline: Check Random function
    Given I go to UDF Number Line Screen
    When I want to test Number function id "<Testcase_ID>"
    And I enter number para value "<Number_Para1>", "<Number_Para2>", "<Number_Para3>" and select UDF Number function "<Number_Function>"
    Then I should see the random number between "<Number_Para1>" and "<Number_Para2>" from GetRamdomNumber

    Examples:
      | Testcase_ID         | Number_Para1 | Number_Para2 | Number_Para3 |  Number_Function                        |
      | GetRamdomNumber_TC1 |              |              | NA           | GetRamdomNumber(Number min; Number max) |
      | GetRamdomNumber_TC2 | -5           | 15           | NA           | GetRamdomNumber(Number min; Number max) |
      | GetRamdomNumber_TC3 | 15           | 5            | NA           | GetRamdomNumber(Number min; Number max) |
      | GetRamdomNumber_TC4 | 5.5          | 15.5         | NA           | GetRamdomNumber(Number min; Number max) |
      | GetRamdomNumber_TC5 | 5            | 15.5         | NA           | GetRamdomNumber(Number min; Number max) |
      | GetRamdomNumber_TC6 | a            | 15           | NA           | GetRamdomNumber(Number min; Number max) |
      | GetRamdomNumber_TC7 | 5            | a            | NA           | GetRamdomNumber(Number min; Number max) |

  Scenario Outline: Check UDF Number functions
    Given I go to UDF Number Line Screen
    When I want to test Number function id "<Testcase_ID>"
    When I enter number para value "<Number_Para1>", "<Number_Para2>", "<Number_Para3>" and select UDF Number function "<Number_Function>"
    Then I should see the correct Number result value "<Number_Result>" from "<Number_Function>"

    Examples:
      | Testcase_ID | Number_Para1 | Number_Para2  | Number_Para3    |  Number_Function                                     | Number_Result |
      | TC1      |              |               | Division(7; 3)  | Math(Number digit; Number decimals; Text expression) | 2             |
      | TC2      | 2            |               | Division(7; 3)  | Math(Number digit; Number decimals; Text expression) | 02            |
      | TC3      |              | 3             | Division(7; 3)  | Math(Number digit; Number decimals; Text expression) | 2.333         |
      | TC4      | 5            | 3             | Division(7; 3)  | Math(Number digit; Number decimals; Text expression) | 2.333         |
      | TC5      | 4            | 3             | Division(7; 3)  | Math(Number digit; Number decimals; Text expression) |               |
      | TC6      | 5            | a             | Division(7; 3)  | Math(Number digit; Number decimals; Text expression) | 00002         |
      | TC7      | a            | 3             | Division(7; 3)  | Math(Number digit; Number decimals; Text expression) | 2.333         |
      | TC8      | a            | a             | Division(7; 3)  | Math(Number digit; Number decimals; Text expression) | 2             |
      | TC9      |              | NA            | NA              | Abs(Number num)                                      |               |
      | TC10     | -5           | NA            | NA              | Abs(Number num)                                      | 5             |
      | TC11     | 5            | NA            | NA              | Abs(Number num)                                      | 5             |
      | TC12     | -5.5         |               | NA              | Abs(Number num)                                      | 5.5           |
      | TC13     | a            | NA            | NA              | Abs(Number num)                                      |               |
      | TC14     |              |               | NA              | Addition(Number num1; Number num2)                   | 0             |
      | TC15     | 5            |               | NA              | Addition(Number num1; Number num2)                   | 5             |
      | TC16     |              | 7             | NA              | Addition(Number num1; Number num2)                   | 7             |
      | TC17     | 5            | 7             | NA              | Addition(Number num1; Number num2)                   | 12            |
      | TC18     | -5           | -7            | NA              | Addition(Number num1; Number num2)                   | -12           |
      | TC19     | a            |               | NA              | Addition(Number num1; Number num2)                   |               |
      | TC20     |              | a             | NA              | Addition(Number num1; Number num2)                   |               |
      | TC21     |              |               | NA              | Subtraction(Number number1; Number2)                 | 0             |
      | TC22     | 5            |               | NA              | Subtraction(Number number1; Number2)                 | 5             |
      | TC23     |              | 7             | NA              | Subtraction(Number number1; Number2)                 | -7            |
      | TC24     | 5            | 7             | NA              | Subtraction(Number number1; Number2)                 | -2            |
      | TC25     | -5           | -7            | NA              | Subtraction(Number number1; Number2)                 | 2             |
      | TC26     | a            |               | NA              | Subtraction(Number number1; Number2)                 |               |
      | TC27     |              | a             | NA              | Subtraction(Number number1; Number2)                 |               |
      | TC28      |              |               | NA              | Division(Number num1; Number num2)                   |               |
      | TC29      | 7            |               | NA              | Division(Number num1; Number num2)                   |               |
      | TC30      |              | 3             | NA              | Division(Number num1; Number num2)                   | 0             |
      | TC31      | 7            | 3             | NA              | Division(Number num1; Number num2)                   | 2.3333333333333333333333333333 |
      | TC32      | -9           | 3             | NA              | Division(Number num1; Number num2)                   | -3            |
      | TC33      | 7            | a             | NA              | Division(Number num1; Number num2)                   |               |
      | TC34      | a            | 3             | NA              | Division(Number num1; Number num2)                   |               |
      | TC35      |              |               | NA              | Multiplication(Number num1; Number num2)             | 0             |
      | TC36      | 7            | 3             | NA              | Multiplication(Number num1; Number num2)             | 21            |
      | TC37      | 7            | -3            | NA              | Multiplication(Number num1; Number num2)             | -21           |
      | TC38      | 7            |               | NA              | Multiplication(Number num1; Number num2)             | 0             |
      | TC39      |              | 3             | NA              | Multiplication(Number num1; Number num2)             | 0             |
      | TC40      | a            |               | NA              | Multiplication(Number num1; Number num2)             |               |
      | TC41      |              | a             | NA              | Multiplication(Number num1; Number num2)             |               |
      | TC42      |              | NA            | NA              | Ceiling(Number num)                                  |               |
      | TC43      | 1.1          | NA            | NA              | Ceiling(Number num)                                  | 2             |
      | TC44      | -1.1         | NA            | NA              | Ceiling(Number num)                                  | -1            |
      | TC45      | a            | NA            | NA              | Ceiling(Number num)                                  |               |
      | TC46      |              | NA            | NA              | Floor(Number num)                                    |               |
      | TC47      | 1.1          | NA            | NA              | Floor(Number num)                                    | 1             |
      | TC48      | a            | NA            | NA              | Floor(Number num)                                    |               |
      | TC49      |              |               |                 | Min(Number num1; Number num2; Number num3)           | 0             |
      | TC50      | 3.25         | 7.5           | 15.75           | Min(Number num1; Number num2; Number num3)           | 3.25          |
      | TC51      |              | 7.5           | 15.75           | Min(Number num1; Number num2; Number num3)           | 7.5           |
      | TC52      | -3.25        | -7.5          | -15.75          | Min(Number num1; Number num2; Number num3)           | -15.75        |
      | TC53      | a            | 7.5           | 15.75           | Min(Number num1; Number num2; Number num3)           | 7.5           |
      | TC54      | a            | a             | a               | Min(Number num1; Number num2; Number num3)           | 0             |
      | TC55      |              |               |                 | Max(Number num1; Number num2; Number num3)           | 0             |
      | TC56      | 3.25         | 7.5           | 15.75           | Max(Number num1; Number num2; Number num3)           | 15.75         |
      | TC57      | -3.25        | -7.5          | -15.75          | Max(Number num1; Number num2; Number num3)           | -3.25         |
      | TC58      | 3.25         | 7.5           |                 | Max(Number num1; Number num2; Number num3)           | 7.5           |
      | TC59      | 3.25         | 7.5           | a               | Max(Number num1; Number num2; Number num3)           | 7.5           |
      | TC60      | a            | a             | a               | Max(Number num1; Number num2; Number num3)           | 0             |
      | TC61      |              |               | NA              | Pow(Number num; Number valuePower)                   |               |
      | TC62      | 0            | 2             | NA              | Pow(Number num; Number valuePower)                   | 0             |
      | TC63      | 2            | 0             | NA              | Pow(Number num; Number valuePower)                   | 1             |
      | TC64      | 2            | 3             | NA              | Pow(Number num; Number valuePower)                   | 8             |
      | TC65      | 2            | -3            | NA              | Pow(Number num; Number valuePower)                   | 0.125         |
      | TC66      | -2           | 3             | NA              | Pow(Number num; Number valuePower)                   | -8            |
      | TC67      | 2            |               | NA              | Pow(Number num; Number valuePower)                   |               |
      | TC68      |              | 3             | NA              | Pow(Number num; Number valuePower)                   |               |
      | TC69      | a            | 3             | NA              | Pow(Number num; Number valuePower)                   |               |
      | TC70      | 2            | a             | NA              | Pow(Number num; Number valuePower)                   |               |
      | TC71      |              |               | NA              | Round(Number num; Number decimalPlaces_opt)          |               |
      | TC72      | -7.725       | 2             | NA              | Round(Number num; Number decimalPlaces_opt)          | -7.73         |
      | TC73      | 7.725        | 5             | NA              | Round(Number num; Number decimalPlaces_opt)          | 7.725         |
      | TC74      | 7.725        |               | NA              | Round(Number num; Number decimalPlaces_opt)          |               |
      | TC75      | 7.725        | a             | NA              | Round(Number num; Number decimalPlaces_opt)          |               |
      | TC76      |              | 2             | NA              | Round(Number num; Number decimalPlaces_opt)          |               |
      | TC77      | a            | 2             | NA              | Round(Number num; Number decimalPlaces_opt)          |               |
      | TC78      |              | NA            | NA              | DecToHex(Number dec)                                 |               |
      | TC79      | 250          | NA            | NA              | DecToHex(Number dec)                                 | FA            |
      | TC80      | -1           | NA            | NA              | DecToHex(Number dec)                                 | FFFFFFFF      |
      | TC81      | A            | NA            | NA              | DecToHex(Number dec)                                 |               |
      | TC82      |              | NA            | NA              | HexToDec(Number hex)                                 |               |
      | TC83      | FA           | NA            | NA              | HexToDec(Number hex)                                 | 250           |
#      | TC84      | FFFFFFFF     | NA            | NA              | HexToDec(Number hex)                                 | 4294967295    |
      | TC85      | -1           | NA            | NA              | HexToDec(Number hex)                                 |               |
      | TC86      |              |               | NA              | GetBit(Number num; Number bitLocation)               |               |
      | TC87      | 30           | 2             | NA              | GetBit(Number num; Number bitLocation)               | 1             |
      | TC88      | 30           | 5             | NA              | GetBit(Number num; Number bitLocation)               | 0             |
      | TC89      | a            | 0             | NA              | GetBit(Number num; Number bitLocation)               |               |
      | TC90      |              | NA            | NA              | HexToFloat(Number hex)                               |               |
      | TC91      | FA           | NA            | NA              | HexToFloat(Number hex)                               | 3.503246E-43  |
#      | TC92      | FFFFFFFF     | NA            | NA              | HexToFloat(Number hex)                               | NaN           |
      | TC93      | -1           | NA            | NA              | HexToFloat(Number hex)                               |               |
      | TC94      |              | NA            | NA              | FloadToHex(Number float)                             |               |
      | TC95      | -1           | NA            | NA              | FloadToHex(Number float)                             | BF800000      |
      | TC96      | 2.25         | NA            | NA              | FloadToHex(Number float)                             | 40100000      |
      | TC97      | a            | NA            | NA              | FloadToHex(Number float)                             |               |
      | TC98      |              | NA            | NA              | HexToBin(Number hex)                                 |               |
      | TC99      | FA           | NA            | NA              | HexToBin(Number hex)                                 | 11111010      |
      | TC100      | -1           | NA            | NA              | HexToBin(Number hex)                                 |               |
      | TC101      |              | NA            | NA              | BinToHex(Number bin)                                 |               |
      | TC102      | 11111010     | NA            | NA              | BinToHex(Number bin)                                 | FA            |
      | TC103      | 2            | NA            | NA              | BinToHex(Number bin)                                 |               |
      | TC104      |              |               | NA              | Bitwise(Number numA; Number numB or bitLocation; AND)|               |
      | TC105      | 15           | 8             | NA              | Bitwise(Number numA; Number numB or bitLocation; AND)| 8             |
      | TC106      | 1            | 6             | NA              | Bitwise(Number numA; Number numB or bitLocation; AND)| 0             |
      | TC107      | a            | 2             | NA              | Bitwise(Number numA; Number numB or bitLocation; AND)|               |
      | TC108      |              | NA            | NA              | Format(Number num; #,##0.00; English; Vietnam)       |               |
      | TC109      | 1000.256     | NA            | NA              | Format(Number num; #,##0.00; English; Vietnam)       | 1.000,26      |
      | TC110      | -15          | NA            | NA              | Format(Number num; #,##0.00; English; Vietnam)       | -15,00        |
      | TC111      | a            | NA            | NA              | Format(Number num; #,##0.00; English; Vietnam)       |               |
