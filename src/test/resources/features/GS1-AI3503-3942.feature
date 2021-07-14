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
      | Sato | 3503 | TC AI3503 01 Invalid: Empty |  | .\Labels\BarcodeAI3503.xml   | TC_AI3503_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3503 | TC AI3503 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3503.xml   | TC_AI3503_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3503 | TC AI3503 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3503.xml   | TC_AI3503_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3503 | TC AI3503 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3503.xml   | TC_AI3503_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3503 | TC AI3503 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3503.xml   | TC_AI3503_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3503 | TC AI3503 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3503.xml   | TC_AI3503_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3503 | TC AI3503 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3503.xml   | TC_AI3503_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3503 | TC AI3503 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3503.xml   | TC_AI3503_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3503 | TC AI3503 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3503.xml   | TC_AI3503_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3513 | TC AI3513 01 Invalid: Empty |  | .\Labels\BarcodeAI3513.xml   | TC_AI3513_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3513 | TC AI3513 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3513.xml   | TC_AI3513_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3513 | TC AI3513 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3513.xml   | TC_AI3513_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3513 | TC AI3513 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3513.xml   | TC_AI3513_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3513 | TC AI3513 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3513.xml   | TC_AI3513_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3513 | TC AI3513 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3513.xml   | TC_AI3513_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3513 | TC AI3513 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3513.xml   | TC_AI3513_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3513 | TC AI3513 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3513.xml   | TC_AI3513_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3513 | TC AI3513 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3513.xml   | TC_AI3513_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3523 | TC AI3523 01 Invalid: Empty |  | .\Labels\BarcodeAI3523.xml   | TC_AI3523_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3523 | TC AI3523 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3523.xml   | TC_AI3523_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3523 | TC AI3523 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3523.xml   | TC_AI3523_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3523 | TC AI3523 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3523.xml   | TC_AI3523_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3523 | TC AI3523 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3523.xml   | TC_AI3523_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3523 | TC AI3523 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3523.xml   | TC_AI3523_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3523 | TC AI3523 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3523.xml   | TC_AI3523_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3523 | TC AI3523 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3523.xml   | TC_AI3523_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3523 | TC AI3523 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3523.xml   | TC_AI3523_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3533 | TC AI3533 01 Invalid: Empty |  | .\Labels\BarcodeAI3533.xml   | TC_AI3533_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3533 | TC AI3533 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3533.xml   | TC_AI3533_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3533 | TC AI3533 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3533.xml   | TC_AI3533_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3533 | TC AI3533 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3533.xml   | TC_AI3533_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3533 | TC AI3533 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3533.xml   | TC_AI3533_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3533 | TC AI3533 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3533.xml   | TC_AI3533_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3533 | TC AI3533 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3533.xml   | TC_AI3533_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3533 | TC AI3533 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3533.xml   | TC_AI3533_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3533 | TC AI3533 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3533.xml   | TC_AI3533_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3543 | TC AI3543 01 Invalid: Empty |  | .\Labels\BarcodeAI3543.xml   | TC_AI3543_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3543 | TC AI3543 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3543.xml   | TC_AI3543_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3543 | TC AI3543 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3543.xml   | TC_AI3543_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3543 | TC AI3543 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3543.xml   | TC_AI3543_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3543 | TC AI3543 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3543.xml   | TC_AI3543_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3543 | TC AI3543 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3543.xml   | TC_AI3543_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3543 | TC AI3543 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3543.xml   | TC_AI3543_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3543 | TC AI3543 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3543.xml   | TC_AI3543_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3543 | TC AI3543 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3543.xml   | TC_AI3543_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3553 | TC AI3553 01 Invalid: Empty |  | .\Labels\BarcodeAI3553.xml   | TC_AI3553_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3553 | TC AI3553 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3553.xml   | TC_AI3553_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3553 | TC AI3553 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3553.xml   | TC_AI3553_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3553 | TC AI3553 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3553.xml   | TC_AI3553_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3553 | TC AI3553 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3553.xml   | TC_AI3553_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3553 | TC AI3553 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3553.xml   | TC_AI3553_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3553 | TC AI3553 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3553.xml   | TC_AI3553_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3553 | TC AI3553 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3553.xml   | TC_AI3553_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3553 | TC AI3553 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3553.xml   | TC_AI3553_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3563 | TC AI3563 01 Invalid: Empty |  | .\Labels\BarcodeAI3563.xml   | TC_AI3563_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3563 | TC AI3563 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3563.xml   | TC_AI3563_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3563 | TC AI3563 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3563.xml   | TC_AI3563_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3563 | TC AI3563 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3563.xml   | TC_AI3563_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3563 | TC AI3563 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3563.xml   | TC_AI3563_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3563 | TC AI3563 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3563.xml   | TC_AI3563_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3563 | TC AI3563 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3563.xml   | TC_AI3563_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3563 | TC AI3563 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3563.xml   | TC_AI3563_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3563 | TC AI3563 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3563.xml   | TC_AI3563_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3573 | TC AI3573 01 Invalid: Empty |  | .\Labels\BarcodeAI3573.xml   | TC_AI3573_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3573 | TC AI3573 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3573.xml   | TC_AI3573_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3573 | TC AI3573 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3573.xml   | TC_AI3573_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3573 | TC AI3573 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3573.xml   | TC_AI3573_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3573 | TC AI3573 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3573.xml   | TC_AI3573_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3573 | TC AI3573 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3573.xml   | TC_AI3573_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3573 | TC AI3573 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3573.xml   | TC_AI3573_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3573 | TC AI3573 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3573.xml   | TC_AI3573_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3573 | TC AI3573 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3573.xml   | TC_AI3573_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3603 | TC AI3603 01 Invalid: Empty |  | .\Labels\BarcodeAI3603.xml   | TC_AI3603_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3603 | TC AI3603 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3603.xml   | TC_AI3603_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3603 | TC AI3603 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3603.xml   | TC_AI3603_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3603 | TC AI3603 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3603.xml   | TC_AI3603_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3603 | TC AI3603 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3603.xml   | TC_AI3603_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3603 | TC AI3603 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3603.xml   | TC_AI3603_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3603 | TC AI3603 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3603.xml   | TC_AI3603_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3603 | TC AI3603 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3603.xml   | TC_AI3603_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3603 | TC AI3603 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3603.xml   | TC_AI3603_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3613 | TC AI3613 01 Invalid: Empty |  | .\Labels\BarcodeAI3613.xml   | TC_AI3613_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3613 | TC AI3613 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3613.xml   | TC_AI3613_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3613 | TC AI3613 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3613.xml   | TC_AI3613_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3613 | TC AI3613 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3613.xml   | TC_AI3613_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3613 | TC AI3613 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3613.xml   | TC_AI3613_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3613 | TC AI3613 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3613.xml   | TC_AI3613_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3613 | TC AI3613 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3613.xml   | TC_AI3613_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3613 | TC AI3613 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3613.xml   | TC_AI3613_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3613 | TC AI3613 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3613.xml   | TC_AI3613_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3623 | TC AI3623 01 Invalid: Empty |  | .\Labels\BarcodeAI3623.xml   | TC_AI3623_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3623 | TC AI3623 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3623.xml   | TC_AI3623_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3623 | TC AI3623 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3623.xml   | TC_AI3623_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3623 | TC AI3623 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3623.xml   | TC_AI3623_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3623 | TC AI3623 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3623.xml   | TC_AI3623_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3623 | TC AI3623 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3623.xml   | TC_AI3623_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3623 | TC AI3623 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3623.xml   | TC_AI3623_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3623 | TC AI3623 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3623.xml   | TC_AI3623_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3623 | TC AI3623 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3623.xml   | TC_AI3623_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3633 | TC AI3633 01 Invalid: Empty |  | .\Labels\BarcodeAI3633.xml   | TC_AI3633_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3633 | TC AI3633 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3633.xml   | TC_AI3633_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3633 | TC AI3633 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3633.xml   | TC_AI3633_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3633 | TC AI3633 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3633.xml   | TC_AI3633_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3633 | TC AI3633 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3633.xml   | TC_AI3633_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3633 | TC AI3633 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3633.xml   | TC_AI3633_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3633 | TC AI3633 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3633.xml   | TC_AI3633_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3633 | TC AI3633 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3633.xml   | TC_AI3633_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3633 | TC AI3633 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3633.xml   | TC_AI3633_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3643 | TC AI3643 01 Invalid: Empty |  | .\Labels\BarcodeAI3643.xml   | TC_AI3643_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3643 | TC AI3643 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3643.xml   | TC_AI3643_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3643 | TC AI3643 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3643.xml   | TC_AI3643_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3643 | TC AI3643 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3643.xml   | TC_AI3643_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3643 | TC AI3643 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3643.xml   | TC_AI3643_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3643 | TC AI3643 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3643.xml   | TC_AI3643_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3643 | TC AI3643 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3643.xml   | TC_AI3643_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3643 | TC AI3643 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3643.xml   | TC_AI3643_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3643 | TC AI3643 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3643.xml   | TC_AI3643_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3653 | TC AI3653 01 Invalid: Empty |  | .\Labels\BarcodeAI3653.xml   | TC_AI3653_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3653 | TC AI3653 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3653.xml   | TC_AI3653_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3653 | TC AI3653 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3653.xml   | TC_AI3653_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3653 | TC AI3653 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3653.xml   | TC_AI3653_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3653 | TC AI3653 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3653.xml   | TC_AI3653_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3653 | TC AI3653 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3653.xml   | TC_AI3653_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3653 | TC AI3653 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3653.xml   | TC_AI3653_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3653 | TC AI3653 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3653.xml   | TC_AI3653_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3653 | TC AI3653 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3653.xml   | TC_AI3653_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3663 | TC AI3663 01 Invalid: Empty |  | .\Labels\BarcodeAI3663.xml   | TC_AI3663_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3663 | TC AI3663 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3663.xml   | TC_AI3663_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3663 | TC AI3663 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3663.xml   | TC_AI3663_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3663 | TC AI3663 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3663.xml   | TC_AI3663_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3663 | TC AI3663 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3663.xml   | TC_AI3663_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3663 | TC AI3663 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3663.xml   | TC_AI3663_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3663 | TC AI3663 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3663.xml   | TC_AI3663_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3663 | TC AI3663 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3663.xml   | TC_AI3663_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3663 | TC AI3663 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3663.xml   | TC_AI3663_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3673 | TC AI3673 01 Invalid: Empty |  | .\Labels\BarcodeAI3673.xml   | TC_AI3673_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3673 | TC AI3673 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3673.xml   | TC_AI3673_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3673 | TC AI3673 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3673.xml   | TC_AI3673_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3673 | TC AI3673 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3673.xml   | TC_AI3673_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3673 | TC AI3673 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3673.xml   | TC_AI3673_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3673 | TC AI3673 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3673.xml   | TC_AI3673_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3673 | TC AI3673 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3673.xml   | TC_AI3673_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3673 | TC AI3673 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3673.xml   | TC_AI3673_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3673 | TC AI3673 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3673.xml   | TC_AI3673_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3683 | TC AI3683 01 Invalid: Empty |  | .\Labels\BarcodeAI3683.xml   | TC_AI3683_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3683 | TC AI3683 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3683.xml   | TC_AI3683_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3683 | TC AI3683 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3683.xml   | TC_AI3683_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3683 | TC AI3683 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3683.xml   | TC_AI3683_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3683 | TC AI3683 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3683.xml   | TC_AI3683_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3683 | TC AI3683 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3683.xml   | TC_AI3683_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3683 | TC AI3683 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3683.xml   | TC_AI3683_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3683 | TC AI3683 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3683.xml   | TC_AI3683_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3683 | TC AI3683 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3683.xml   | TC_AI3683_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3693 | TC AI3693 01 Invalid: Empty |  | .\Labels\BarcodeAI3693.xml   | TC_AI3693_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3693 | TC AI3693 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3693.xml   | TC_AI3693_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3693 | TC AI3693 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3693.xml   | TC_AI3693_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3693 | TC AI3693 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3693.xml   | TC_AI3693_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3693 | TC AI3693 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3693.xml   | TC_AI3693_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3693 | TC AI3693 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3693.xml   | TC_AI3693_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3693 | TC AI3693 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3693.xml   | TC_AI3693_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3693 | TC AI3693 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3693.xml   | TC_AI3693_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3693 | TC AI3693 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3693.xml   | TC_AI3693_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 37 | TC AI37 01 Invalid: More than 8 digits | 123456789 | .\Labels\BarcodeAI37.xml   | TC_AI37_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 37 | TC AI37 02 Invalid: Not number | hello- | .\Labels\BarcodeAI37.xml   | TC_AI37_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 37 | TC AI37 03 Valid: Empty |  | .\Labels\BarcodeAI37.xml   | TC_AI37_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 37 | TC AI37 04 Valid: 8 digits | 12345678 | .\Labels\BarcodeAI37.xml   | TC_AI37_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 37 | TC AI37 05 Valid: Less than 8 digits | 111 | .\Labels\BarcodeAI37.xml   | TC_AI37_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3903 | TC AI3903 01 Invalid: Count(number * 1000) > 15 | 1234567898762 | .\Labels\BarcodeAI3903.xml   | TC_AI3903_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3903 | TC AI3903 02 Valid: Empty |  | .\Labels\BarcodeAI3903.xml   | TC_AI3903_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3903 | TC AI3903 03 Valid: Count(number * 1000) = 15 | 123456789876 | .\Labels\BarcodeAI3903.xml   | TC_AI3903_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3903 | TC AI3903 04 Valid: Count(number * 1000) < 15 | 12345678987 | .\Labels\BarcodeAI3903.xml   | TC_AI3903_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3903 | TC AI3903 05 Valid: Round number | 123456789876.5432 | .\Labels\BarcodeAI3903.xml   | TC_AI3903_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3903 | TC AI3903 06 Valid: Round up number | 123456789876.5435 | .\Labels\BarcodeAI3903.xml   | TC_AI3903_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3903 | TC AI3923 07 Invalid: Not number | abc | .\Labels\BarcodeAI3903.xml   | TC_AI3903_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3913 | TC AI3913 01 Invalid: Count(number * 1000) > 18 | 1234567898765432 | .\Labels\BarcodeAI3913.xml   | TC_AI3913_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3913 | TC AI3913 02 Invalid: Empty |  | .\Labels\BarcodeAI3913.xml   | TC_AI3913_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3913 | TC AI3913 03 Invalid: Less than 3 digits | 12 | .\Labels\BarcodeAI3913.xml   | TC_AI3913_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3913 | TC AI3913 04 Valid: 3 digits | 123 | .\Labels\BarcodeAI3913.xml   | TC_AI3913_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3913 | TC AI3913 05 Valid: Count(number * 1000) = 18 | 123456789876333 | .\Labels\BarcodeAI3913.xml   | TC_AI3913_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3913 | TC AI3913 06 Valid: Count(number * 1000) < 18 | 123456789876 | .\Labels\BarcodeAI3913.xml   | TC_AI3913_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3913 | TC AI3913 07 Valid: Round number | 123456789876543.2123 | .\Labels\BarcodeAI3913.xml   | TC_AI3913_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3913 | TC AI3913 08 Valid: Round up number | 123456789876543.21255 | .\Labels\BarcodeAI3913.xml   | TC_AI3913_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3913 | TC AI3913 08 Valid: Remove prefix 0 | 00123456789123456 | .\Labels\BarcodeAI3913.xml   | TC_AI3913_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3913 | TC AI3913 08 Invalid: Not number | abc | .\Labels\BarcodeAI3913.xml   | TC_AI3913_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3923 | TC AI3923 01 Invalid: Count(number * 1000) > 15 | 1234567898762 | .\Labels\BarcodeAI3923.xml   | TC_AI3923_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3923 | TC AI3923 02 Valid: Empty |  | .\Labels\BarcodeAI3923.xml   | TC_AI3923_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3923 | TC AI3923 03 Valid: Count(number * 1000) = 15 | 123456789876 | .\Labels\BarcodeAI3923.xml   | TC_AI3923_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3923 | TC AI3923 04 Valid: Count(number * 1000) < 15 | 12345678987 | .\Labels\BarcodeAI3923.xml   | TC_AI3923_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3923 | TC AI3923 05 Valid: Round number | 123456789876.5432 | .\Labels\BarcodeAI3923.xml   | TC_AI3923_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3923 | TC AI3923 06 Valid: Round up number | 123456789876.5435 | .\Labels\BarcodeAI3923.xml   | TC_AI3923_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3923 | TC AI3923 07 Invalid: Not number | abc | .\Labels\BarcodeAI3923.xml   | TC_AI3923_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3933 | TC AI3933 01 Invalid: Count(number * 1000) > 18 | 1234567898765432 | .\Labels\BarcodeAI3933.xml   | TC_AI3933_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3933 | TC AI3933 02 Invalid: Empty |  | .\Labels\BarcodeAI3933.xml   | TC_AI3933_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3933 | TC AI3933 03 Invalid: Less than 3 digits | 12 | .\Labels\BarcodeAI3933.xml   | TC_AI3933_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3933 | TC AI3933 04 Valid: 3 digits | 123 | .\Labels\BarcodeAI3933.xml   | TC_AI3933_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3933 | TC AI3933 05 Valid: Count(number * 1000) = 18 | 123456789876333 | .\Labels\BarcodeAI3933.xml   | TC_AI3933_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3933 | TC AI3933 06 Valid: Count(number * 1000) < 18 | 123456789876 | .\Labels\BarcodeAI3933.xml   | TC_AI3933_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3933 | TC AI3933 07 Valid: Round number | 123456789876543.2123 | .\Labels\BarcodeAI3933.xml   | TC_AI3933_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3933 | TC AI3933 08 Valid: Round up number | 123456789876543.21255 | .\Labels\BarcodeAI3933.xml   | TC_AI3933_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3933 | TC AI3933 08 Valid: Remove prefix 0 | 00123456789123456 | .\Labels\BarcodeAI3933.xml   | TC_AI3933_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3933 | TC AI3933 08 Invalid: Not number | abc | .\Labels\BarcodeAI3933.xml   | TC_AI3933_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3942 | TC AI3942 01 Invalid: Count(number * 100) > 4 | 122 | .\Labels\BarcodeAI3942.xml   | TC_AI3942_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3942 | TC AI3942 02 Invalid: Empty |  | .\Labels\BarcodeAI3942.xml   | TC_AI3942_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3942 | TC AI3942 03 Valid: Count(number * 100) < 4 | 1 | .\Labels\BarcodeAI3942.xml   | TC_AI3942_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3942 | TC AI3942 04 Valid: Count(number * 100) = 4 | 12 | .\Labels\BarcodeAI3942.xml   | TC_AI3942_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3942 | TC AI3942 05 Invalid: Not number | he | .\Labels\BarcodeAI3942.xml   | TC_AI3942_05.txt | G0L1EPrinter.SATO_Printerdata.txt |