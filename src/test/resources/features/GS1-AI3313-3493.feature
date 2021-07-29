@Barcode
Feature: GS1 barcode AIs 3313 -> 3493

#Background:
#  Given CodeIT app is open "C:\\DATA\\Working\\Build\\CodeITv4.15.0.10_Server\\"

  Scenario Outline: Check AIs(AI3313 -> 3493) in GS1 barcode on Printers
    Given I am on "<Printer>" screen
    When I want to check "<AI>" with "<Scenario>"
    And I enter "<AI Value>" for AI, "<Label Path>" for LabelPath
    And I click Print
    Then I should see "<Actual Printing File>" equal "<Baseline Printing File>" correct printing data

    Examples:
      | Printer | AI  | Scenario  | AI Value | Label Path  | Baseline Printing File |  Actual Printing File  |
      | Sato | 3313 | TC AI3313 01 Invalid: Empty |  | .\Labels\BarcodeAI3313.xml   | TC_AI3313_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3313 | TC AI3313 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3313.xml   | TC_AI3313_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3313 | TC AI3313 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3313.xml   | TC_AI3313_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3313 | TC AI3313 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3313.xml   | TC_AI3313_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3313 | TC AI3313 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3313.xml   | TC_AI3313_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3313 | TC AI3313 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3313.xml   | TC_AI3313_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3313 | TC AI3313 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3313.xml   | TC_AI3313_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3313 | TC AI3313 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3313.xml   | TC_AI3313_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3313 | TC AI3313 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3313.xml   | TC_AI3313_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3323 | TC AI3323 01 Invalid: Empty |  | .\Labels\BarcodeAI3323.xml   | TC_AI3323_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3323 | TC AI3323 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3323.xml   | TC_AI3323_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3323 | TC AI3323 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3323.xml   | TC_AI3323_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3323 | TC AI3323 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3323.xml   | TC_AI3323_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3323 | TC AI3323 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3323.xml   | TC_AI3323_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3323 | TC AI3323 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3323.xml   | TC_AI3323_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3323 | TC AI3323 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3323.xml   | TC_AI3323_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3323 | TC AI3323 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3323.xml   | TC_AI3323_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3323 | TC AI3323 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3323.xml   | TC_AI3323_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3333 | TC AI3333 01 Invalid: Empty |  | .\Labels\BarcodeAI3333.xml   | TC_AI3333_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3333 | TC AI3333 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3333.xml   | TC_AI3333_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3333 | TC AI3333 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3333.xml   | TC_AI3333_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3333 | TC AI3333 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3333.xml   | TC_AI3333_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3333 | TC AI3333 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3333.xml   | TC_AI3333_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3333 | TC AI3333 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3333.xml   | TC_AI3333_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3333 | TC AI3333 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3333.xml   | TC_AI3333_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3333 | TC AI3333 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3333.xml   | TC_AI3333_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3333 | TC AI3333 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3333.xml   | TC_AI3333_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3343 | TC AI3343 01 Invalid: Empty |  | .\Labels\BarcodeAI3343.xml   | TC_AI3343_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3343 | TC AI3343 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3343.xml   | TC_AI3343_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3343 | TC AI3343 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3343.xml   | TC_AI3343_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3343 | TC AI3343 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3343.xml   | TC_AI3343_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3343 | TC AI3343 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3343.xml   | TC_AI3343_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3343 | TC AI3343 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3343.xml   | TC_AI3343_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3343 | TC AI3343 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3343.xml   | TC_AI3343_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3343 | TC AI3343 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3343.xml   | TC_AI3343_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3343 | TC AI3343 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3343.xml   | TC_AI3343_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3353 | TC AI3353 01 Invalid: Empty |  | .\Labels\BarcodeAI3353.xml   | TC_AI3353_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3353 | TC AI3353 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3353.xml   | TC_AI3353_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3353 | TC AI3353 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3353.xml   | TC_AI3353_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3353 | TC AI3353 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3353.xml   | TC_AI3353_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3353 | TC AI3353 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3353.xml   | TC_AI3353_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3353 | TC AI3353 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3353.xml   | TC_AI3353_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3353 | TC AI3353 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3353.xml   | TC_AI3353_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3353 | TC AI3353 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3353.xml   | TC_AI3353_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3353 | TC AI3353 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3353.xml   | TC_AI3353_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3363 | TC AI3363 01 Invalid: Empty |  | .\Labels\BarcodeAI3363.xml   | TC_AI3363_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3363 | TC AI3363 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3363.xml   | TC_AI3363_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3363 | TC AI3363 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3363.xml   | TC_AI3363_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3363 | TC AI3363 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3363.xml   | TC_AI3363_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3363 | TC AI3363 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3363.xml   | TC_AI3363_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3363 | TC AI3363 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3363.xml   | TC_AI3363_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3363 | TC AI3363 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3363.xml   | TC_AI3363_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3363 | TC AI3363 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3363.xml   | TC_AI3363_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3363 | TC AI3363 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3363.xml   | TC_AI3363_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3373 | TC AI3373 01 Invalid: Empty |  | .\Labels\BarcodeAI3373.xml   | TC_AI3373_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3373 | TC AI3373 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3373.xml   | TC_AI3373_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3373 | TC AI3373 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3373.xml   | TC_AI3373_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3373 | TC AI3373 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3373.xml   | TC_AI3373_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3373 | TC AI3373 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3373.xml   | TC_AI3373_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3373 | TC AI3373 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3373.xml   | TC_AI3373_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3373 | TC AI3373 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3373.xml   | TC_AI3373_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3373 | TC AI3373 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3373.xml   | TC_AI3373_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3373 | TC AI3373 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3373.xml   | TC_AI3373_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3403 | TC AI3403 01 Invalid: Empty |  | .\Labels\BarcodeAI3403.xml   | TC_AI3403_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3403 | TC AI3403 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3403.xml   | TC_AI3403_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3403 | TC AI3403 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3403.xml   | TC_AI3403_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3403 | TC AI3403 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3403.xml   | TC_AI3403_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3403 | TC AI3403 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3403.xml   | TC_AI3403_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3403 | TC AI3403 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3403.xml   | TC_AI3403_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3403 | TC AI3403 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3403.xml   | TC_AI3403_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3403 | TC AI3403 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3403.xml   | TC_AI3403_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3403 | TC AI3403 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3403.xml   | TC_AI3403_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3413 | TC AI3413 01 Invalid: Empty |  | .\Labels\BarcodeAI3413.xml   | TC_AI3413_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3413 | TC AI3413 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3413.xml   | TC_AI3413_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3413 | TC AI3413 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3413.xml   | TC_AI3413_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3413 | TC AI3413 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3413.xml   | TC_AI3413_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3413 | TC AI3413 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3413.xml   | TC_AI3413_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3413 | TC AI3413 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3413.xml   | TC_AI3413_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3413 | TC AI3413 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3413.xml   | TC_AI3413_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3413 | TC AI3413 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3413.xml   | TC_AI3413_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3413 | TC AI3413 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3413.xml   | TC_AI3413_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3423 | TC AI3423 01 Invalid: Empty |  | .\Labels\BarcodeAI3423.xml   | TC_AI3423_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3423 | TC AI3423 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3423.xml   | TC_AI3423_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3423 | TC AI3423 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3423.xml   | TC_AI3423_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3423 | TC AI3423 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3423.xml   | TC_AI3423_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3423 | TC AI3423 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3423.xml   | TC_AI3423_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3423 | TC AI3423 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3423.xml   | TC_AI3423_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3423 | TC AI3423 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3423.xml   | TC_AI3423_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3423 | TC AI3423 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3423.xml   | TC_AI3423_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3423 | TC AI3423 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3423.xml   | TC_AI3423_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3433 | TC AI3433 01 Invalid: Empty |  | .\Labels\BarcodeAI3433.xml   | TC_AI3433_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3433 | TC AI3433 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3433.xml   | TC_AI3433_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3433 | TC AI3433 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3433.xml   | TC_AI3433_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3433 | TC AI3433 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3433.xml   | TC_AI3433_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3433 | TC AI3433 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3433.xml   | TC_AI3433_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3433 | TC AI3433 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3433.xml   | TC_AI3433_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3433 | TC AI3433 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3433.xml   | TC_AI3433_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3433 | TC AI3433 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3433.xml   | TC_AI3433_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3433 | TC AI3433 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3433.xml   | TC_AI3433_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3443 | TC AI3443 01 Invalid: Empty |  | .\Labels\BarcodeAI3443.xml   | TC_AI3443_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3443 | TC AI3443 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3443.xml   | TC_AI3443_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3443 | TC AI3443 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3443.xml   | TC_AI3443_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3443 | TC AI3443 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3443.xml   | TC_AI3443_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3443 | TC AI3443 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3443.xml   | TC_AI3443_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3443 | TC AI3443 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3443.xml   | TC_AI3443_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3443 | TC AI3443 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3443.xml   | TC_AI3443_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3443 | TC AI3443 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3443.xml   | TC_AI3443_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3443 | TC AI3443 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3443.xml   | TC_AI3443_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3453 | TC AI3453 01 Invalid: Empty |  | .\Labels\BarcodeAI3453.xml   | TC_AI3453_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3453 | TC AI3453 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3453.xml   | TC_AI3453_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3453 | TC AI3453 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3453.xml   | TC_AI3453_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3453 | TC AI3453 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3453.xml   | TC_AI3453_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3453 | TC AI3453 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3453.xml   | TC_AI3453_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3453 | TC AI3453 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3453.xml   | TC_AI3453_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3453 | TC AI3453 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3453.xml   | TC_AI3453_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3453 | TC AI3453 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3453.xml   | TC_AI3453_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3453 | TC AI3453 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3453.xml   | TC_AI3453_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3463 | TC AI3463 01 Invalid: Empty |  | .\Labels\BarcodeAI3463.xml   | TC_AI3463_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3463 | TC AI3463 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3463.xml   | TC_AI3463_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3463 | TC AI3463 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3463.xml   | TC_AI3463_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3463 | TC AI3463 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3463.xml   | TC_AI3463_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3463 | TC AI3463 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3463.xml   | TC_AI3463_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3463 | TC AI3463 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3463.xml   | TC_AI3463_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3463 | TC AI3463 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3463.xml   | TC_AI3463_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3463 | TC AI3463 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3463.xml   | TC_AI3463_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3463 | TC AI3463 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3463.xml   | TC_AI3463_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3473 | TC AI3473 01 Invalid: Empty |  | .\Labels\BarcodeAI3473.xml   | TC_AI3473_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3473 | TC AI3473 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3473.xml   | TC_AI3473_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3473 | TC AI3473 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3473.xml   | TC_AI3473_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3473 | TC AI3473 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3473.xml   | TC_AI3473_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3473 | TC AI3473 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3473.xml   | TC_AI3473_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3473 | TC AI3473 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3473.xml   | TC_AI3473_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3473 | TC AI3473 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3473.xml   | TC_AI3473_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3473 | TC AI3473 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3473.xml   | TC_AI3473_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3473 | TC AI3473 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3473.xml   | TC_AI3473_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3483 | TC AI3483 01 Invalid: Empty |  | .\Labels\BarcodeAI3483.xml   | TC_AI3483_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3483 | TC AI3483 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3483.xml   | TC_AI3483_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3483 | TC AI3483 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3483.xml   | TC_AI3483_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3483 | TC AI3483 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3483.xml   | TC_AI3483_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3483 | TC AI3483 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3483.xml   | TC_AI3483_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3483 | TC AI3483 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3483.xml   | TC_AI3483_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3483 | TC AI3483 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3483.xml   | TC_AI3483_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3483 | TC AI3483 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3483.xml   | TC_AI3483_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3483 | TC AI3483 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3483.xml   | TC_AI3483_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3493 | TC AI3493 01 Invalid: Empty |  | .\Labels\BarcodeAI3493.xml   | TC_AI3493_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3493 | TC AI3493 02 Invalid: Not number | hello- | .\Labels\BarcodeAI3493.xml   | TC_AI3493_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3493 | TC AI3493 03 Invalid: Count(number * 1000) > 6 | 8522 | .\Labels\BarcodeAI3493.xml   | TC_AI3493_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3493 | TC AI3493 04 Invalid: Count(number * 1000) > 6 | 5001.50 | .\Labels\BarcodeAI3493.xml   | TC_AI3493_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3493 | TC AI3493 05 Valid: 500.500 | 500.500 | .\Labels\BarcodeAI3493.xml   | TC_AI3493_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3493 | TC AI3493 06 Valid: 5.123456 | 5.123456 | .\Labels\BarcodeAI3493.xml   | TC_AI3493_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3493 | TC AI3493 07 Valid: 5.123545 | 5.123545 | .\Labels\BarcodeAI3493.xml   | TC_AI3493_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3493 | TC AI3493 08 Valid: 123.4567 | 123.4567 | .\Labels\BarcodeAI3493.xml   | TC_AI3493_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 3493 | TC AI3493 09 Valid: 005660 | 005660 | .\Labels\BarcodeAI3493.xml   | TC_AI3493_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
