@Barcode
Feature: GS1 barcode

#Background:
#  Given CodeIT app is open "C:\\DATA\\Working\\Build\\CodeITv4.15.0.10_Server\\"

  Scenario Outline: Check AIs in GS1 barcode on Printers
    Given I am on "<Printer>" screen
    When I want to check "<AI>" with "<Scenario>"
    And I enter "<AI Value>" for AI, "<Label Path>" for LabelPath
    And I click Print
    Then I should see "<Actual Printing File>" equal "<Baseline Printing File>" correct printing data

    Examples:
      | Printer | AI  | Scenario  | AI Value | Label Path  | Baseline Printing File |  Actual Printing File  |
      | Sato | 3103 | TC AI3103 01 Invalid: Empty |  | .\Labels\BarcodeAI3103.xml   | TC_AI3103_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3103 | TC AI3103 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3103.xml   | TC_AI3103_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3103 | TC AI3103 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3103.xml   | TC_AI3103_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3103 | TC AI3103 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3103.xml   | TC_AI3103_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3103 | TC AI3103 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3103.xml   | TC_AI3103_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3103 | TC AI3103 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3103.xml   | TC_AI3103_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3103 | TC AI3103 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3103.xml   | TC_AI3103_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3103 | TC AI3103 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3103.xml   | TC_AI3103_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3103 | TC AI3103 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3103.xml   | TC_AI3103_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3113 | TC AI3113 01 Invalid: Empty |  | .\Labels\BarcodeAI3113.xml   | TC_AI3113_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3113 | TC AI3113 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3113.xml   | TC_AI3113_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3113 | TC AI3113 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3113.xml   | TC_AI3113_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3113 | TC AI3113 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3113.xml   | TC_AI3113_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3113 | TC AI3113 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3113.xml   | TC_AI3113_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3113 | TC AI3113 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3113.xml   | TC_AI3113_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3113 | TC AI3113 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3113.xml   | TC_AI3113_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3113 | TC AI3113 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3113.xml   | TC_AI3113_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3113 | TC AI3113 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3113.xml   | TC_AI3113_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3123 | TC AI3123 01 Invalid: Empty |  | .\Labels\BarcodeAI3123.xml   | TC_AI3123_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3123 | TC AI3123 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3123.xml   | TC_AI3123_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3123 | TC AI3123 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3123.xml   | TC_AI3123_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3123 | TC AI3123 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3123.xml   | TC_AI3123_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3123 | TC AI3123 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3123.xml   | TC_AI3123_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3123 | TC AI3123 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3123.xml   | TC_AI3123_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3123 | TC AI3123 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3123.xml   | TC_AI3123_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3123 | TC AI3123 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3123.xml   | TC_AI3123_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3123 | TC AI3123 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3123.xml   | TC_AI3123_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3133 | TC AI3133 01 Invalid: Empty |  | .\Labels\BarcodeAI3133.xml   | TC_AI3133_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3133 | TC AI3133 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3133.xml   | TC_AI3133_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3133 | TC AI3133 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3133.xml   | TC_AI3133_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3133 | TC AI3133 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3133.xml   | TC_AI3133_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3133 | TC AI3133 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3133.xml   | TC_AI3133_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3133 | TC AI3133 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3133.xml   | TC_AI3133_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3133 | TC AI3133 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3133.xml   | TC_AI3133_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3133 | TC AI3133 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3133.xml   | TC_AI3133_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3133 | TC AI3133 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3133.xml   | TC_AI3133_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3143 | TC AI3143 01 Invalid: Empty |  | .\Labels\BarcodeAI3143.xml   | TC_AI3143_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3143 | TC AI3143 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3143.xml   | TC_AI3143_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3143 | TC AI3143 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3143.xml   | TC_AI3143_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3143 | TC AI3143 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3143.xml   | TC_AI3143_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3143 | TC AI3143 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3143.xml   | TC_AI3143_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3143 | TC AI3143 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3143.xml   | TC_AI3143_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3143 | TC AI3143 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3143.xml   | TC_AI3143_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3143 | TC AI3143 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3143.xml   | TC_AI3143_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3143 | TC AI3143 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3143.xml   | TC_AI3143_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3153 | TC AI3153 01 Invalid: Empty |  | .\Labels\BarcodeAI3153.xml   | TC_AI3153_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3153 | TC AI3153 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3153.xml   | TC_AI3153_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3153 | TC AI3153 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3153.xml   | TC_AI3153_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3153 | TC AI3153 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3153.xml   | TC_AI3153_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3153 | TC AI3153 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3153.xml   | TC_AI3153_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3153 | TC AI3153 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3153.xml   | TC_AI3153_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3153 | TC AI3153 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3153.xml   | TC_AI3153_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3153 | TC AI3153 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3153.xml   | TC_AI3153_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3153 | TC AI3153 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3153.xml   | TC_AI3153_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3163 | TC AI3163 01 Invalid: Empty |  | .\Labels\BarcodeAI3163.xml   | TC_AI3163_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3163 | TC AI3163 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3163.xml   | TC_AI3163_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3163 | TC AI3163 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3163.xml   | TC_AI3163_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3163 | TC AI3163 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3163.xml   | TC_AI3163_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3163 | TC AI3163 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3163.xml   | TC_AI3163_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3163 | TC AI3163 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3163.xml   | TC_AI3163_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3163 | TC AI3163 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3163.xml   | TC_AI3163_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3163 | TC AI3163 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3163.xml   | TC_AI3163_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3163 | TC AI3163 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3163.xml   | TC_AI3163_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3203 | TC AI3203 01 Invalid: Empty |  | .\Labels\BarcodeAI3203.xml   | TC_AI3203_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3203 | TC AI3203 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3203.xml   | TC_AI3203_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3203 | TC AI3203 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3203.xml   | TC_AI3203_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3203 | TC AI3203 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3203.xml   | TC_AI3203_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3203 | TC AI3203 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3203.xml   | TC_AI3203_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3203 | TC AI3203 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3203.xml   | TC_AI3203_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3203 | TC AI3203 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3203.xml   | TC_AI3203_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3203 | TC AI3203 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3203.xml   | TC_AI3203_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3203 | TC AI3203 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3203.xml   | TC_AI3203_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3213 | TC AI3213 01 Invalid: Empty |  | .\Labels\BarcodeAI3213.xml   | TC_AI3213_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3213 | TC AI3213 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3213.xml   | TC_AI3213_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3213 | TC AI3213 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3213.xml   | TC_AI3213_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3213 | TC AI3213 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3213.xml   | TC_AI3213_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3213 | TC AI3213 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3213.xml   | TC_AI3213_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3213 | TC AI3213 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3213.xml   | TC_AI3213_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3213 | TC AI3213 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3213.xml   | TC_AI3213_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3213 | TC AI3213 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3213.xml   | TC_AI3213_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3213 | TC AI3213 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3213.xml   | TC_AI3213_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3223 | TC AI3223 01 Invalid: Empty |  | .\Labels\BarcodeAI3223.xml   | TC_AI3223_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3223 | TC AI3223 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3223.xml   | TC_AI3223_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3223 | TC AI3223 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3223.xml   | TC_AI3223_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3223 | TC AI3223 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3223.xml   | TC_AI3223_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3223 | TC AI3223 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3223.xml   | TC_AI3223_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3223 | TC AI3223 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3223.xml   | TC_AI3223_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3223 | TC AI3223 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3223.xml   | TC_AI3223_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3223 | TC AI3223 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3223.xml   | TC_AI3223_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3223 | TC AI3223 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3223.xml   | TC_AI3223_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3233 | TC AI3233 01 Invalid: Empty |  | .\Labels\BarcodeAI3233.xml   | TC_AI3233_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3233 | TC AI3233 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3233.xml   | TC_AI3233_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3233 | TC AI3233 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3233.xml   | TC_AI3233_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3233 | TC AI3233 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3233.xml   | TC_AI3233_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3233 | TC AI3233 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3233.xml   | TC_AI3233_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3233 | TC AI3233 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3233.xml   | TC_AI3233_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3233 | TC AI3233 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3233.xml   | TC_AI3233_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3233 | TC AI3233 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3233.xml   | TC_AI3233_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3233 | TC AI3233 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3233.xml   | TC_AI3233_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3243 | TC AI3243 01 Invalid: Empty |  | .\Labels\BarcodeAI3243.xml   | TC_AI3243_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3243 | TC AI3243 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3243.xml   | TC_AI3243_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3243 | TC AI3243 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3243.xml   | TC_AI3243_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3243 | TC AI3243 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3243.xml   | TC_AI3243_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3243 | TC AI3243 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3243.xml   | TC_AI3243_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3243 | TC AI3243 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3243.xml   | TC_AI3243_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3243 | TC AI3243 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3243.xml   | TC_AI3243_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3243 | TC AI3243 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3243.xml   | TC_AI3243_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3243 | TC AI3243 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3243.xml   | TC_AI3243_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3253 | TC AI3253 01 Invalid: Empty |  | .\Labels\BarcodeAI3253.xml   | TC_AI3253_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3253 | TC AI3253 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3253.xml   | TC_AI3253_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3253 | TC AI3253 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3253.xml   | TC_AI3253_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3253 | TC AI3253 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3253.xml   | TC_AI3253_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3253 | TC AI3253 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3253.xml   | TC_AI3253_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3253 | TC AI3253 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3253.xml   | TC_AI3253_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3253 | TC AI3253 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3253.xml   | TC_AI3253_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3253 | TC AI3253 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3253.xml   | TC_AI3253_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3253 | TC AI3253 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3253.xml   | TC_AI3253_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3263 | TC AI3263 01 Invalid: Empty |  | .\Labels\BarcodeAI3263.xml   | TC_AI3263_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3263 | TC AI3263 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3263.xml   | TC_AI3263_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3263 | TC AI3263 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3263.xml   | TC_AI3263_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3263 | TC AI3263 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3263.xml   | TC_AI3263_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3263 | TC AI3263 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3263.xml   | TC_AI3263_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3263 | TC AI3263 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3263.xml   | TC_AI3263_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3263 | TC AI3263 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3263.xml   | TC_AI3263_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3263 | TC AI3263 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3263.xml   | TC_AI3263_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3263 | TC AI3263 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3263.xml   | TC_AI3263_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3273 | TC AI3273 01 Invalid: Empty |  | .\Labels\BarcodeAI3273.xml   | TC_AI3273_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3273 | TC AI3273 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3273.xml   | TC_AI3273_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3273 | TC AI3273 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3273.xml   | TC_AI3273_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3273 | TC AI3273 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3273.xml   | TC_AI3273_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3273 | TC AI3273 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3273.xml   | TC_AI3273_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3273 | TC AI3273 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3273.xml   | TC_AI3273_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3273 | TC AI3273 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3273.xml   | TC_AI3273_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3273 | TC AI3273 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3273.xml   | TC_AI3273_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3273 | TC AI3273 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3273.xml   | TC_AI3273_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3283 | TC AI3283 01 Invalid: Empty |  | .\Labels\BarcodeAI3283.xml   | TC_AI3283_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3283 | TC AI3283 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3283.xml   | TC_AI3283_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3283 | TC AI3283 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3283.xml   | TC_AI3283_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3283 | TC AI3283 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3283.xml   | TC_AI3283_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3283 | TC AI3283 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3283.xml   | TC_AI3283_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3283 | TC AI3283 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3283.xml   | TC_AI3283_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3283 | TC AI3283 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3283.xml   | TC_AI3283_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3283 | TC AI3283 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3283.xml   | TC_AI3283_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3283 | TC AI3283 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3283.xml   | TC_AI3283_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3293 | TC AI3293 01 Invalid: Empty |  | .\Labels\BarcodeAI3293.xml   | TC_AI3293_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3293 | TC AI3293 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3293.xml   | TC_AI3293_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3293 | TC AI3293 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3293.xml   | TC_AI3293_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3293 | TC AI3293 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3293.xml   | TC_AI3293_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3293 | TC AI3293 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3293.xml   | TC_AI3293_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3293 | TC AI3293 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3293.xml   | TC_AI3293_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3293 | TC AI3293 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3293.xml   | TC_AI3293_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3293 | TC AI3293 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3293.xml   | TC_AI3293_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3293 | TC AI3293 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3293.xml   | TC_AI3293_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3303 | TC AI3303 01 Invalid: Empty |  | .\Labels\BarcodeAI3303.xml   | TC_AI3303_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3303 | TC AI3303 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3303.xml   | TC_AI3303_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3303 | TC AI3303 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3303.xml   | TC_AI3303_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3303 | TC AI3303 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3303.xml   | TC_AI3303_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3303 | TC AI3303 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3303.xml   | TC_AI3303_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3303 | TC AI3303 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3303.xml   | TC_AI3303_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3303 | TC AI3303 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3303.xml   | TC_AI3303_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3303 | TC AI3303 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3303.xml   | TC_AI3303_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3303 | TC AI3303 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3303.xml   | TC_AI3303_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
