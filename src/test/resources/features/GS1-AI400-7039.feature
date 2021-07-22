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
      | Sato | 400 | TC AI400 01 Invalid: More than 30 characters | #@74561230123456789654123054456 | .\Labels\BarcodeAI400.xml   | TC_AI400_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 400 | TC AI400 02 Valid: Empty |  | .\Labels\BarcodeAI400.xml   | TC_AI400_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 400 | TC AI400 03 Valid: Less than 30 characters | X%x98745612301234567896541230 | .\Labels\BarcodeAI400.xml   | TC_AI400_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 400 | TC AI400 04 Valid: 30 characters | X%x987456123012345678965412302 | .\Labels\BarcodeAI400.xml   | TC_AI400_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 401 | TC AI401 01 Invalid: More than 30 characters | #@74561230123456789654123054456 | .\Labels\BarcodeAI401.xml   | TC_AI401_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 401 | TC AI401 02 Valid: Empty |  | .\Labels\BarcodeAI401.xml   | TC_AI401_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 401 | TC AI401 03 Valid: Less than 30 characters and no checksum | X%x98745612301234567896541230 | .\Labels\BarcodeAI401.xml   | TC_AI401_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 401 | TC AI401 04 Valid: 30 characters and checksum | X%x987456123012345678965412302 | .\Labels\BarcodeAI401_Checksum.xml   | TC_AI401_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 401 | TC AI401 05 Valid: 29 characters and checksum | X%x98745612301234567896541230 | .\Labels\BarcodeAI401_Checksum.xml   | TC_AI401_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 402 | TC AI402 01 Invalid: Less than 17 digits | 1234567890123456 | .\Labels\BarcodeAI402.xml   | TC_AI402_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 402 | TC AI402 02 Invalid: Empty |  | .\Labels\BarcodeAI402.xml   | TC_AI402_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 402 | TC AI402 03 Invalid: 15 digits and checksum | 123456789012345 | .\Labels\BarcodeAI402_Checksum.xml   | TC_AI402_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 402 | TC AI402 04 Valid: 17 digits and no checksum | 12345678901234522 | .\Labels\BarcodeAI402.xml   | TC_AI402_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 402 | TC AI402 05 Valid: 16 digits and checksum | 1234567890123457 | .\Labels\BarcodeAI402_Checksum.xml   | TC_AI402_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 402 | TC AI402 06 Valid: 17 digits and checksum | 12345678901234578 | .\Labels\BarcodeAI402_Checksum.xml   | TC_AI402_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 402 | TC AI402 07 Invalid: Not number | hello text ab1211 | .\Labels\BarcodeAI402.xml   | TC_AI402_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 403 | TC AI403 01 Invalid: More than 30 characters | #@74561230123456789654123054456 | .\Labels\BarcodeAI403.xml   | TC_AI403_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 403 | TC AI403 02 Valid: Empty |  | .\Labels\BarcodeAI403.xml   | TC_AI403_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 403 | TC AI403 03 Valid: Less than 30 characters | X%x98745612301234567896541230 | .\Labels\BarcodeAI403.xml   | TC_AI403_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 403 | TC AI403 04 Valid: 30 characters | X%x987456123012345678965412302 | .\Labels\BarcodeAI403.xml   | TC_AI403_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 410 | TC AI410 01 Invalid: More than 13 digits | 12345678987654321 | .\Labels\BarcodeAI410.xml   | TC_AI410_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 410 | TC AI410 02 Invalid: Empty |  | .\Labels\BarcodeAI410.xml   | TC_AI410_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 410 | TC AI410 03 Invalid: 11 digits and Checksum | 45678901234 | .\Labels\BarcodeAI410_Checksum.xml   | TC_AI410_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 410 | TC AI410 04 Invalid: Not number | abc1234567890 | .\Labels\BarcodeAI410.xml   | TC_AI410_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 410 | TC AI410 05 Valid: 13 digits and no Checksum | 1234567898765 | .\Labels\BarcodeAI410.xml   | TC_AI410_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 410 | TC AI410 06 Valid: 12 digits and Checksum | 456789012345 | .\Labels\BarcodeAI410_Checksum.xml   | TC_AI410_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 410 | TC AI410 07 Valid: 13 digits and Checksum | 4567890123452 | .\Labels\BarcodeAI410_Checksum.xml   | TC_AI410_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 411 | TC AI411 01 Invalid: More than 13 digits | 12345678987654321 | .\Labels\BarcodeAI411.xml   | TC_AI411_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 411 | TC AI411 02 Invalid: Empty |  | .\Labels\BarcodeAI411.xml   | TC_AI411_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 411 | TC AI411 03 Invalid: 11 digits and Checksum | 45678901234 | .\Labels\BarcodeAI411_Checksum.xml   | TC_AI411_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 411 | TC AI411 04 Invalid: Not number | abc1234567890 | .\Labels\BarcodeAI411.xml   | TC_AI411_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 411 | TC AI411 05 Valid: 13 digits and no Checksum | 1234567898765 | .\Labels\BarcodeAI411.xml   | TC_AI411_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 411 | TC AI411 06 Valid: 12 digits and Checksum | 456789012345 | .\Labels\BarcodeAI411_Checksum.xml   | TC_AI411_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 411 | TC AI411 07 Valid: 13 digits and Checksum | 4567890123452 | .\Labels\BarcodeAI411_Checksum.xml   | TC_AI411_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 412 | TC AI412 01 Invalid: More than 13 digits | 12345678987654321 | .\Labels\BarcodeAI412.xml   | TC_AI412_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 412 | TC AI412 02 Invalid: Empty |  | .\Labels\BarcodeAI412.xml   | TC_AI412_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 412 | TC AI412 03 Invalid: 11 digits and Checksum | 45678901234 | .\Labels\BarcodeAI412_Checksum.xml   | TC_AI412_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 412 | TC AI412 04 Invalid: Not number | abc1234567890 | .\Labels\BarcodeAI412.xml   | TC_AI412_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 412 | TC AI412 05 Valid: 13 digits and no Checksum | 1234567898765 | .\Labels\BarcodeAI412.xml   | TC_AI412_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 412 | TC AI412 06 Valid: 12 digits and Checksum | 456789012345 | .\Labels\BarcodeAI412_Checksum.xml   | TC_AI412_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 412 | TC AI412 07 Valid: 13 digits and Checksum | 4567890123452 | .\Labels\BarcodeAI412_Checksum.xml   | TC_AI412_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 413 | TC AI413 01 Invalid: More than 13 digits | 12345678987654321 | .\Labels\BarcodeAI413.xml   | TC_AI413_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 413 | TC AI413 02 Invalid: Empty |  | .\Labels\BarcodeAI413.xml   | TC_AI413_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 413 | TC AI413 03 Invalid: 11 digits and Checksum | 45678901234 | .\Labels\BarcodeAI413_Checksum.xml   | TC_AI413_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 413 | TC AI413 04 Invalid: Not number | abc1234567890 | .\Labels\BarcodeAI413.xml   | TC_AI413_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 413 | TC AI413 05 Valid: 13 digits and no Checksum | 1234567898765 | .\Labels\BarcodeAI413.xml   | TC_AI413_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 413 | TC AI413 06 Valid: 12 digits and Checksum | 456789012345 | .\Labels\BarcodeAI413_Checksum.xml   | TC_AI413_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 413 | TC AI413 07 Valid: 13 digits and Checksum | 4567890123452 | .\Labels\BarcodeAI413_Checksum.xml   | TC_AI413_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 414 | TC AI414 01 Invalid: More than 13 digits | 12345678987654321 | .\Labels\BarcodeAI414.xml   | TC_AI414_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 414 | TC AI414 02 Invalid: Empty |  | .\Labels\BarcodeAI414.xml   | TC_AI414_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 414 | TC AI414 03 Invalid: 11 digits and Checksum | 45678901234 | .\Labels\BarcodeAI414_Checksum.xml   | TC_AI414_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 414 | TC AI414 04 Invalid: Not number | abc1234567890 | .\Labels\BarcodeAI414.xml   | TC_AI414_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 414 | TC AI414 05 Valid: 13 digits and no Checksum | 1234567898765 | .\Labels\BarcodeAI414.xml   | TC_AI414_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 414 | TC AI414 06 Valid: 12 digits and Checksum | 456789012345 | .\Labels\BarcodeAI414_Checksum.xml   | TC_AI414_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 414 | TC AI414 07 Valid: 13 digits and Checksum | 4567890123452 | .\Labels\BarcodeAI414_Checksum.xml   | TC_AI414_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 415 | TC AI415 01 Invalid: More than 13 digits | 12345678987654321 | .\Labels\BarcodeAI415.xml   | TC_AI415_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 415 | TC AI415 02 Invalid: Empty |  | .\Labels\BarcodeAI415.xml   | TC_AI415_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 415 | TC AI415 03 Invalid: 11 digits and Checksum | 45678901234 | .\Labels\BarcodeAI415_Checksum.xml   | TC_AI415_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 415 | TC AI415 04 Invalid: Not number | abc1234567890 | .\Labels\BarcodeAI415.xml   | TC_AI415_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 415 | TC AI415 05 Valid: 13 digits and no Checksum | 1234567898765 | .\Labels\BarcodeAI415.xml   | TC_AI415_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 415 | TC AI415 06 Valid: 12 digits and Checksum | 456789012345 | .\Labels\BarcodeAI415_Checksum.xml   | TC_AI415_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 415 | TC AI415 07 Valid: 13 digits and Checksum | 4567890123452 | .\Labels\BarcodeAI415_Checksum.xml   | TC_AI415_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 416 | TC AI416 01 Invalid: More than 13 digits | 12345678987654321 | .\Labels\BarcodeAI416.xml   | TC_AI416_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 416 | TC AI416 02 Invalid: Empty |  | .\Labels\BarcodeAI416.xml   | TC_AI416_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 416 | TC AI416 03 Invalid: 11 digits and Checksum | 45678901234 | .\Labels\BarcodeAI416_Checksum.xml   | TC_AI416_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 416 | TC AI416 04 Invalid: Not number | abc1234567890 | .\Labels\BarcodeAI416.xml   | TC_AI416_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 416 | TC AI416 05 Valid: 13 digits and no Checksum | 1234567898765 | .\Labels\BarcodeAI416.xml   | TC_AI416_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 416 | TC AI416 06 Valid: 12 digits and Checksum | 456789012345 | .\Labels\BarcodeAI416_Checksum.xml   | TC_AI416_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 416 | TC AI416 07 Valid: 13 digits and Checksum | 4567890123452 | .\Labels\BarcodeAI416_Checksum.xml   | TC_AI416_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 420 | TC AI420 01 Invalid: More than 20 characters | 123456789987456321012 | .\Labels\BarcodeAI420.xml   | TC_AI420_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 420 | TC AI420 02 Valid: Empty |  | .\Labels\BarcodeAI420.xml   | TC_AI420_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 420 | TC AI420 03 Valid: Less than 20 characters | X%x98745612301234 | .\Labels\BarcodeAI420.xml   | TC_AI420_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 420 | TC AI420 04 Valid: 20 characters | X%x98745612301234iuy | .\Labels\BarcodeAI420.xml   | TC_AI420_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 421 | TC AI421 01 Invalid: less than 3 digits | 12 | .\Labels\BarcodeAI421.xml   | TC_AI421_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 421 | TC AI421 02 Invalid: Empty |  | .\Labels\BarcodeAI421.xml   | TC_AI421_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 421 | TC AI421 03 Invalid: 3 prefix is not number | X%x | .\Labels\BarcodeAI421.xml   | TC_AI421_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 421 | TC AI421 04 Invalid: More than 12 characters | 9874563210123 | .\Labels\BarcodeAI421.xml   | TC_AI421_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 421 | TC AI421 05 Valid: 3 digits | 012 | .\Labels\BarcodeAI421.xml   | TC_AI421_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 421 | TC AI421 06 Valid: 12 characters | 012X!x345678 | .\Labels\BarcodeAI421.xml   | TC_AI421_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 421 | TC AI421 07 Valid: count(number) > 3 and count(number)<12 | 012X!x345 | .\Labels\BarcodeAI421.xml   | TC_AI421_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 422 | TC AI422 01 Invalid: More than 3 digits | 2212 | .\Labels\BarcodeAI422.xml   | TC_AI422_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 422 | TC AI422 02 Invalid: Empty |  | .\Labels\BarcodeAI422.xml   | TC_AI422_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 422 | TC AI422 03 Invalid: Less than 3 digits | 12 | .\Labels\BarcodeAI422.xml   | TC_AI422_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 422 | TC AI422 04 Invalid: Not number | X%x | .\Labels\BarcodeAI422.xml   | TC_AI422_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 422 | TC AI422 04 Valid: 3 digits | 012 | .\Labels\BarcodeAI422.xml   | TC_AI422_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 423 | TC AI423 01 Invalid: less than 3 digits | 12 | .\Labels\BarcodeAI423.xml   | TC_AI423_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 423 | TC AI423 02 Invalid: Empty |  | .\Labels\BarcodeAI423.xml   | TC_AI423_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 423 | TC AI423 03 Invalid: 3 prefix is not number | X%x | .\Labels\BarcodeAI423.xml   | TC_AI423_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 423 | TC AI423 04 Invalid: More than 15 digits | 1234567890123456 | .\Labels\BarcodeAI423.xml   | TC_AI423_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 423 | TC AI423 05 Invalid: Not number | 012x | .\Labels\BarcodeAI423.xml   | TC_AI423_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 423 | TC AI423 06 Valid: 3 digits | 012 | .\Labels\BarcodeAI423.xml   | TC_AI423_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 423 | TC AI423 07 Valid: 15 digits | 123456789012345 | .\Labels\BarcodeAI423.xml   | TC_AI423_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 423 | TC AI423 08 Valid: count(number)>3 and count(number)<15 | 1234567890123 | .\Labels\BarcodeAI423.xml   | TC_AI423_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 424 | TC AI424 01 Invalid: More than 3 digits | 2212 | .\Labels\BarcodeAI424.xml   | TC_AI424_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 424 | TC AI424 02 Invalid: Empty |  | .\Labels\BarcodeAI424.xml   | TC_AI424_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 424 | TC AI424 03 Invalid: Less than 3 digits | 12 | .\Labels\BarcodeAI424.xml   | TC_AI424_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 424 | TC AI424 04 Invalid: Not number | X%x | .\Labels\BarcodeAI424.xml   | TC_AI424_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 424 | TC AI424 04 Valid: 3 digits | 012 | .\Labels\BarcodeAI424.xml   | TC_AI424_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 425 | TC AI425 01 Invalid: less than 3 digits | 12 | .\Labels\BarcodeAI425.xml   | TC_AI425_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 425 | TC AI425 02 Invalid: Empty |  | .\Labels\BarcodeAI425.xml   | TC_AI425_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 425 | TC AI425 03 Invalid: 3 prefix is not number | X%x | .\Labels\BarcodeAI425.xml   | TC_AI425_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 425 | TC AI425 04 Invalid: More than 15 digits | 1234567890123456 | .\Labels\BarcodeAI425.xml   | TC_AI425_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 425 | TC AI425 05 Invalid: Not number | 012x | .\Labels\BarcodeAI425.xml   | TC_AI425_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 425 | TC AI425 06 Valid: 3 digits | 012 | .\Labels\BarcodeAI425.xml   | TC_AI425_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 425 | TC AI425 07 Valid: 15 digits | 123456789012345 | .\Labels\BarcodeAI425.xml   | TC_AI425_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 425 | TC AI425 08 Valid: count(number)>3 and count(number)<15 | 1234567890123 | .\Labels\BarcodeAI425.xml   | TC_AI425_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 426 | TC AI426 01 Invalid: More than 3 digits | 2212 | .\Labels\BarcodeAI426.xml   | TC_AI426_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 426 | TC AI426 02 Invalid: Empty |  | .\Labels\BarcodeAI426.xml   | TC_AI426_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 426 | TC AI426 03 Invalid: Less than 3 digits | 12 | .\Labels\BarcodeAI426.xml   | TC_AI426_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 426 | TC AI426 04 Invalid: Not number | X%x | .\Labels\BarcodeAI426.xml   | TC_AI426_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 426 | TC AI426 04 Valid: 3 digits | 012 | .\Labels\BarcodeAI426.xml   | TC_AI426_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 427 | TC AI427 01 Invalid: More than 3 characters | 1123 | .\Labels\BarcodeAI427.xml   | TC_AI427_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 427 | TC AI427 02 Valid: Empty |  | .\Labels\BarcodeAI427.xml   | TC_AI427_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 427 | TC AI427 03 Valid: Less than 3 characters | X% | .\Labels\BarcodeAI427.xml   | TC_AI427_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 427 | TC AI427 04 Valid: 3 characters | iuy | .\Labels\BarcodeAI427.xml   | TC_AI427_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7001 | TC AI7001 01 Invalid: More than 13 digits | 12345678912345 | .\Labels\BarcodeAI7001.xml   | TC_AI7001_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7001 | TC AI7001 02 Invalid: Empty |  | .\Labels\BarcodeAI7001.xml   | TC_AI7001_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7001 | TC AI7001 03 Invalid: Less than 13 digits | 123456789123 | .\Labels\BarcodeAI7001.xml   | TC_AI7001_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7001 | TC AI7001 04 Valid: 13 digits | 1234567891234 | .\Labels\BarcodeAI7001.xml   | TC_AI7001_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7001 | TC AI7001 04 Invalid: Not number | 123456789123E | .\Labels\BarcodeAI7001.xml   | TC_AI7001_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7002 | TC AI7002 01 Invalid: More than 30 characters | X%x98745612301234iuy1234567890R | .\Labels\BarcodeAI7002.xml   | TC_AI7002_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7002 | TC AI7002 02 Valid: Empty |  | .\Labels\BarcodeAI7002.xml   | TC_AI7002_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7002 | TC AI7002 03 Valid: Less than 30 characters | QWERTY | .\Labels\BarcodeAI7002.xml   | TC_AI7002_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7002 | TC AI7002 04 Valid: 30 characters | QWERTY012345678987654321012345 | .\Labels\BarcodeAI7002.xml   | TC_AI7002_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7003 | TC AI7003 01 Invalid: More than 10 digits | 12345678911 | .\Labels\BarcodeAI7003.xml   | TC_AI7003_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7003 | TC AI7003 02 Valid: Empty |  | .\Labels\BarcodeAI7003.xml   | TC_AI7003_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7003 | TC AI7003 03 Valid: Less than 10 digits | 123456789 | .\Labels\BarcodeAI7003.xml   | TC_AI7003_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7003 | TC AI7003 04 Valid: 10 digits | 1234567891 | .\Labels\BarcodeAI7003.xml   | TC_AI7003_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7003 | TC AI7003 05 Valid: Not number | 123456789x | .\Labels\BarcodeAI7003.xml   | TC_AI7003_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7004 | TC AI7004 01 Invalid: More than 4 digits | 21112 | .\Labels\BarcodeAI7004.xml   | TC_AI7004_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7004 | TC AI7004 02 Valid: Empty |  | .\Labels\BarcodeAI7004.xml   | TC_AI7004_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7004 | TC AI7004 03 Valid: Less than 4 digits | 322 | .\Labels\BarcodeAI7004.xml   | TC_AI7004_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7004 | TC AI7004 04 Valid: 4 digits | 4444 | .\Labels\BarcodeAI7004.xml   | TC_AI7004_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7004 | TC AI7004 05 Invalid: Not number | 444e | .\Labels\BarcodeAI7004.xml   | TC_AI7004_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7005 | TC AI7005 01 Invalid: More than 12 characters | 123456789876E | .\Labels\BarcodeAI7005.xml   | TC_AI7005_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7005 | TC AI7005 02 Valid: Empty |  | .\Labels\BarcodeAI7005.xml   | TC_AI7005_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7005 | TC AI7005 03 Valid: Less than 12 characters | QWERTY | .\Labels\BarcodeAI7005.xml   | TC_AI7005_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7005 | TC AI7005 04 Valid: 12 characters | QWERTY012345 | .\Labels\BarcodeAI7005.xml   | TC_AI7005_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7006 | TC AI7006 01 Invalid: More than 6 digits | 1234567 | .\Labels\BarcodeAI7006.xml   | TC_AI7006_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7006 | TC AI7006 02 Valid: Empty |  | .\Labels\BarcodeAI7006.xml   | TC_AI7006_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7006 | TC AI7006 03 Valid: Less than 6 digits | 12345 | .\Labels\BarcodeAI7006.xml   | TC_AI7006_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7006 | TC AI7006 04 Valid: 6 digits | 123456 | .\Labels\BarcodeAI7006.xml   | TC_AI7006_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7006 | TC AI7006 05 Valid: Not number | 1234ee | .\Labels\BarcodeAI7006.xml   | TC_AI7006_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7007 | TC AI7007 01 Invalid: less than 36 digits | 12345 | .\Labels\BarcodeAI7007.xml   | TC_AI7007_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7007 | TC AI7007 02 Invalid: Empty |  | .\Labels\BarcodeAI7007.xml   | TC_AI7007_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7007 | TC AI7007 03 Invalid: 6 prefix is not number | X%x123 | .\Labels\BarcodeAI7007.xml   | TC_AI7007_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7007 | TC AI7007 04 Invalid: More than 18 digits | 1234567890123456222 | .\Labels\BarcodeAI7007.xml   | TC_AI7007_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7007 | TC AI7007 05 Invalid: Not number | 012x33 | .\Labels\BarcodeAI7007.xml   | TC_AI7007_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7007 | TC AI7007 06 Valid: 6 digits | 012345 | .\Labels\BarcodeAI7007.xml   | TC_AI7007_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7007 | TC AI7007 07 Valid: 18 digits | 123456789012345678 | .\Labels\BarcodeAI7007.xml   | TC_AI7007_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7007 | TC AI7007 08 Valid: count(number)>6 and count(number)<18 | 12345678901234567 | .\Labels\BarcodeAI7007.xml   | TC_AI7007_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7008 | TC AI7008 01 Invalid: More than 3 characters | 876E | .\Labels\BarcodeAI7008.xml   | TC_AI7008_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7008 | TC AI7008 02 Valid: Empty |  | .\Labels\BarcodeAI7008.xml   | TC_AI7008_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7008 | TC AI7008 03 Valid: Less than 3 characters | QW | .\Labels\BarcodeAI7008.xml   | TC_AI7008_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7008 | TC AI7008 04 Valid: 3 characters | RTY | .\Labels\BarcodeAI7008.xml   | TC_AI7008_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7009 | TC AI7009 01 Invalid: More than 10 characters | 876E1234566 | .\Labels\BarcodeAI7009.xml   | TC_AI7009_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7009 | TC AI7009 02 Valid: Empty |  | .\Labels\BarcodeAI7009.xml   | TC_AI7009_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7009 | TC AI7009 03 Valid: Less than 10 characters | QW1234567 | .\Labels\BarcodeAI7009.xml   | TC_AI7009_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7009 | TC AI7009 04 Valid: 10 characters | RTY0987654 | .\Labels\BarcodeAI7009.xml   | TC_AI7009_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7010 | TC AI7010 01 Invalid: More than 2 characters | 60E | .\Labels\BarcodeAI7010.xml   | TC_AI7010_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7010 | TC AI7010 02 Valid: Empty |  | .\Labels\BarcodeAI7010.xml   | TC_AI7010_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7010 | TC AI7010 03 Valid: Less than 2 characters | Q | .\Labels\BarcodeAI7010.xml   | TC_AI7010_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7010 | TC AI7010 04 Valid: 2 characters | RT | .\Labels\BarcodeAI7010.xml   | TC_AI7010_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7020 | TC AI7020 01 Invalid: More than 20 characters | 01234567898765432101E | .\Labels\BarcodeAI7020.xml   | TC_AI7020_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7020 | TC AI7020 02 Valid: Empty |  | .\Labels\BarcodeAI7020.xml   | TC_AI7020_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7020 | TC AI7020 03 Valid: Less than 20 characters | 0123456789876543Ed | .\Labels\BarcodeAI7020.xml   | TC_AI7020_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7020 | TC AI7020 04 Valid: 20 characters | 0123456789876543210e | .\Labels\BarcodeAI7020.xml   | TC_AI7020_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7021 | TC AI7021 01 Invalid: More than 20 characters | 01234567898765432101E | .\Labels\BarcodeAI7021.xml   | TC_AI7021_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7021 | TC AI7021 02 Valid: Empty |  | .\Labels\BarcodeAI7021.xml   | TC_AI7021_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7021 | TC AI7021 03 Valid: Less than 20 characters | 0123456789876543Ed | .\Labels\BarcodeAI7021.xml   | TC_AI7021_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7021 | TC AI7021 04 Valid: 20 characters | 0123456789876543210e | .\Labels\BarcodeAI7021.xml   | TC_AI7021_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7022 | TC AI7022 01 Invalid: More than 20 characters | 01234567898765432101E | .\Labels\BarcodeAI7022.xml   | TC_AI7022_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7022 | TC AI7022 02 Valid: Empty |  | .\Labels\BarcodeAI7022.xml   | TC_AI7022_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7022 | TC AI7022 03 Valid: Less than 20 characters | 0123456789876543Ed | .\Labels\BarcodeAI7022.xml   | TC_AI7022_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7022 | TC AI7022 04 Valid: 20 characters | 0123456789876543210e | .\Labels\BarcodeAI7022.xml   | TC_AI7022_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7023 | TC AI7023 01 Invalid: More than 30 characters | ABC1234567898765432123456789876 | .\Labels\BarcodeAI7023.xml   | TC_AI7023_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7023 | TC AI7023 02 Valid: Empty |  | .\Labels\BarcodeAI7023.xml   | TC_AI7023_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7023 | TC AI7023 03 Valid: Less than 30 characters | 0 | .\Labels\BarcodeAI7023.xml   | TC_AI7023_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7023 | TC AI7023 04 Valid: 30 characters | ABC123456789876543212345678987 | .\Labels\BarcodeAI7023.xml   | TC_AI7023_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7030 | TC AI7030 01 Invalid: less than 3 digits | 12 | .\Labels\BarcodeAI7030.xml   | TC_AI7030_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7030 | TC AI7030 02 Invalid: Empty |  | .\Labels\BarcodeAI7030.xml   | TC_AI7030_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7030 | TC AI7030 03 Invalid: 3 prefix is not number | X%x | .\Labels\BarcodeAI7030.xml   | TC_AI7030_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7030 | TC AI7030 04 Invalid: More than 30 characters | 1110123456d78987654321234567898 | .\Labels\BarcodeAI7030.xml   | TC_AI7030_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7030 | TC AI7030 05 Valid: 3 digits | 012 | .\Labels\BarcodeAI7030.xml   | TC_AI7030_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7030 | TC AI7030 06 Valid: 30 characters | 1110123456d7898765432123456789 | .\Labels\BarcodeAI7030.xml   | TC_AI7030_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7030 | TC AI7030 07 Valid: count(number)>3 and count(number)<30 | 1110123456d789876543212345678 | .\Labels\BarcodeAI7030.xml   | TC_AI7030_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7031 | TC AI7031 01 Invalid: less than 3 digits | 12 | .\Labels\BarcodeAI7031.xml   | TC_AI7031_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7031 | TC AI7031 02 Invalid: Empty |  | .\Labels\BarcodeAI7031.xml   | TC_AI7031_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7031 | TC AI7031 03 Invalid: 3 prefix is not number | X%x | .\Labels\BarcodeAI7031.xml   | TC_AI7031_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7031 | TC AI7031 04 Invalid: More than 30 characters | 1110123456d78987654321234567898 | .\Labels\BarcodeAI7031.xml   | TC_AI7031_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7031 | TC AI7031 05 Valid: 3 digits | 012 | .\Labels\BarcodeAI7031.xml   | TC_AI7031_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7031 | TC AI7031 06 Valid: 30 characters | 1110123456d7898765432123456789 | .\Labels\BarcodeAI7031.xml   | TC_AI7031_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7031 | TC AI7031 07 Valid: count(number)>3 and count(number)<30 | 1110123456d789876543212345678 | .\Labels\BarcodeAI7031.xml   | TC_AI7031_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7032 | TC AI7032 01 Invalid: less than 3 digits | 12 | .\Labels\BarcodeAI7032.xml   | TC_AI7032_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7032 | TC AI7032 02 Invalid: Empty |  | .\Labels\BarcodeAI7032.xml   | TC_AI7032_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7032 | TC AI7032 03 Invalid: 3 prefix is not number | X%x | .\Labels\BarcodeAI7032.xml   | TC_AI7032_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7032 | TC AI7032 04 Invalid: More than 30 characters | 1110123456d78987654321234567898 | .\Labels\BarcodeAI7032.xml   | TC_AI7032_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7032 | TC AI7032 05 Valid: 3 digits | 012 | .\Labels\BarcodeAI7032.xml   | TC_AI7032_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7032 | TC AI7032 06 Valid: 30 characters | 1110123456d7898765432123456789 | .\Labels\BarcodeAI7032.xml   | TC_AI7032_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7032 | TC AI7032 07 Valid: count(number)>3 and count(number)<30 | 1110123456d789876543212345678 | .\Labels\BarcodeAI7032.xml   | TC_AI7032_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7033 | TC AI7033 01 Invalid: less than 3 digits | 12 | .\Labels\BarcodeAI7033.xml   | TC_AI7033_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7033 | TC AI7033 02 Invalid: Empty |  | .\Labels\BarcodeAI7033.xml   | TC_AI7033_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7033 | TC AI7033 03 Invalid: 3 prefix is not number | X%x | .\Labels\BarcodeAI7033.xml   | TC_AI7033_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7033 | TC AI7033 04 Invalid: More than 30 characters | 1110123456d78987654321234567898 | .\Labels\BarcodeAI7033.xml   | TC_AI7033_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7033 | TC AI7033 05 Valid: 3 digits | 012 | .\Labels\BarcodeAI7033.xml   | TC_AI7033_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7033 | TC AI7033 06 Valid: 30 characters | 1110123456d7898765432123456789 | .\Labels\BarcodeAI7033.xml   | TC_AI7033_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7033 | TC AI7033 07 Valid: count(number)>3 and count(number)<30 | 1110123456d789876543212345678 | .\Labels\BarcodeAI7033.xml   | TC_AI7033_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7034 | TC AI7034 01 Invalid: less than 3 digits | 12 | .\Labels\BarcodeAI7034.xml   | TC_AI7034_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7034 | TC AI7034 02 Invalid: Empty |  | .\Labels\BarcodeAI7034.xml   | TC_AI7034_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7034 | TC AI7034 03 Invalid: 3 prefix is not number | X%x | .\Labels\BarcodeAI7034.xml   | TC_AI7034_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7034 | TC AI7034 04 Invalid: More than 30 characters | 1110123456d78987654321234567898 | .\Labels\BarcodeAI7034.xml   | TC_AI7034_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7034 | TC AI7034 05 Valid: 3 digits | 012 | .\Labels\BarcodeAI7034.xml   | TC_AI7034_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7034 | TC AI7034 06 Valid: 30 characters | 1110123456d7898765432123456789 | .\Labels\BarcodeAI7034.xml   | TC_AI7034_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7034 | TC AI7034 07 Valid: count(number)>3 and count(number)<30 | 1110123456d789876543212345678 | .\Labels\BarcodeAI7034.xml   | TC_AI7034_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7035 | TC AI7035 01 Invalid: less than 3 digits | 12 | .\Labels\BarcodeAI7035.xml   | TC_AI7035_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7035 | TC AI7035 02 Invalid: Empty |  | .\Labels\BarcodeAI7035.xml   | TC_AI7035_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7035 | TC AI7035 03 Invalid: 3 prefix is not number | X%x | .\Labels\BarcodeAI7035.xml   | TC_AI7035_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7035 | TC AI7035 04 Invalid: More than 30 characters | 1110123456d78987654321234567898 | .\Labels\BarcodeAI7035.xml   | TC_AI7035_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7035 | TC AI7035 05 Valid: 3 digits | 012 | .\Labels\BarcodeAI7035.xml   | TC_AI7035_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7035 | TC AI7035 06 Valid: 30 characters | 1110123456d7898765432123456789 | .\Labels\BarcodeAI7035.xml   | TC_AI7035_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7035 | TC AI7035 07 Valid: count(number)>3 and count(number)<30 | 1110123456d789876543212345678 | .\Labels\BarcodeAI7035.xml   | TC_AI7035_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7036 | TC AI7036 01 Invalid: less than 3 digits | 12 | .\Labels\BarcodeAI7036.xml   | TC_AI7036_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7036 | TC AI7036 02 Invalid: Empty |  | .\Labels\BarcodeAI7036.xml   | TC_AI7036_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7036 | TC AI7036 03 Invalid: 3 prefix is not number | X%x | .\Labels\BarcodeAI7036.xml   | TC_AI7036_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7036 | TC AI7036 04 Invalid: More than 30 characters | 1110123456d78987654321234567898 | .\Labels\BarcodeAI7036.xml   | TC_AI7036_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7036 | TC AI7036 05 Valid: 3 digits | 012 | .\Labels\BarcodeAI7036.xml   | TC_AI7036_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7036 | TC AI7036 06 Valid: 30 characters | 1110123456d7898765432123456789 | .\Labels\BarcodeAI7036.xml   | TC_AI7036_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7036 | TC AI7036 07 Valid: count(number)>3 and count(number)<30 | 1110123456d789876543212345678 | .\Labels\BarcodeAI7036.xml   | TC_AI7036_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7037 | TC AI7037 01 Invalid: less than 3 digits | 12 | .\Labels\BarcodeAI7037.xml   | TC_AI7037_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7037 | TC AI7037 02 Invalid: Empty |  | .\Labels\BarcodeAI7037.xml   | TC_AI7037_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7037 | TC AI7037 03 Invalid: 3 prefix is not number | X%x | .\Labels\BarcodeAI7037.xml   | TC_AI7037_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7037 | TC AI7037 04 Invalid: More than 30 characters | 1110123456d78987654321234567898 | .\Labels\BarcodeAI7037.xml   | TC_AI7037_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7037 | TC AI7037 05 Valid: 3 digits | 012 | .\Labels\BarcodeAI7037.xml   | TC_AI7037_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7037 | TC AI7037 06 Valid: 30 characters | 1110123456d7898765432123456789 | .\Labels\BarcodeAI7037.xml   | TC_AI7037_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7037 | TC AI7037 07 Valid: count(number)>3 and count(number)<30 | 1110123456d789876543212345678 | .\Labels\BarcodeAI7037.xml   | TC_AI7037_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7038 | TC AI7038 01 Invalid: less than 3 digits | 12 | .\Labels\BarcodeAI7038.xml   | TC_AI7038_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7038 | TC AI7038 02 Invalid: Empty |  | .\Labels\BarcodeAI7038.xml   | TC_AI7038_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7038 | TC AI7038 03 Invalid: 3 prefix is not number | X%x | .\Labels\BarcodeAI7038.xml   | TC_AI7038_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7038 | TC AI7038 04 Invalid: More than 30 characters | 1110123456d78987654321234567898 | .\Labels\BarcodeAI7038.xml   | TC_AI7038_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7038 | TC AI7038 05 Valid: 3 digits | 012 | .\Labels\BarcodeAI7038.xml   | TC_AI7038_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7038 | TC AI7038 06 Valid: 30 characters | 1110123456d7898765432123456789 | .\Labels\BarcodeAI7038.xml   | TC_AI7038_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7038 | TC AI7038 07 Valid: count(number)>3 and count(number)<30 | 1110123456d789876543212345678 | .\Labels\BarcodeAI7038.xml   | TC_AI7038_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7039 | TC AI7039 01 Invalid: less than 3 digits | 12 | .\Labels\BarcodeAI7039.xml   | TC_AI7039_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7039 | TC AI7039 02 Invalid: Empty |  | .\Labels\BarcodeAI7039.xml   | TC_AI7039_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7039 | TC AI7039 03 Invalid: 3 prefix is not number | X%x | .\Labels\BarcodeAI7039.xml   | TC_AI7039_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7039 | TC AI7039 04 Invalid: More than 30 characters | 1110123456d78987654321234567898 | .\Labels\BarcodeAI7039.xml   | TC_AI7039_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7039 | TC AI7039 05 Valid: 3 digits | 012 | .\Labels\BarcodeAI7039.xml   | TC_AI7039_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7039 | TC AI7039 06 Valid: 30 characters | 1110123456d7898765432123456789 | .\Labels\BarcodeAI7039.xml   | TC_AI7039_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7039 | TC AI7039 07 Valid: count(number)>3 and count(number)<30 | 1110123456d789876543212345678 | .\Labels\BarcodeAI7039.xml   | TC_AI7039_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
