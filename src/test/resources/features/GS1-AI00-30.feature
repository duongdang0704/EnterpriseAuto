@Barcode
Feature: GS1 barcode AIs 00 -> 30

#Background:
#  Given CodeIT app is open "C:\\DATA\\Working\\Build\\CodeITv4.15.0.10_Server\\"

  Scenario Outline: Check AIs(00 -> 30) in GS1 barcode on Printers
    Given I am on "<Printer>" screen
    When I want to check "<AI>" with "<Scenario>"
    And I enter "<AI Value>" for AI, "<Label Path>" for LabelPath
    And I click Print
    Then I should see "<Actual Printing File>" equal "<Baseline Printing File>" correct printing data

    Examples:
      | Printer | AI  | Scenario  | AI Value | Label Path  | Baseline Printing File |  Actual Printing File  |
      | Sato | 00 | TC AI00 01 Invalid: Empty |  | .\Labels\BarcodeAI00.xml | TC_AI00_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 00 | TC AI00 02 Invalid: 17 digits and no Checksum added | 12345678987654321 | .\Labels\BarcodeAI00.xml | TC_AI00_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 00 | TC AI00 03 Invalid: more than 18 digits | 1234567898765432123 | .\Labels\BarcodeAI00.xml | TC_AI00_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 00 | TC AI00 04 Valid: 18 digits and no Checksum added | 123456789876543212 | .\Labels\BarcodeAI00.xml | TC_AI00_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 00 | TC AI00 05 Valid: 18 digits and Checksum | 123456789876543212 | .\Labels\BarcodeAI00_Checksum.xml | TC_AI00_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 00 | TC AI00 06 Valid: 17 digits and Checksum | 12345678987654321 | .\Labels\BarcodeAI00_Checksum.xml | TC_AI00_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 00 | TC AI00 07 Invalid: more than 18 digits and Checksum | 1234567898765432123 | .\Labels\BarcodeAI00_Checksum.xml | TC_AI00_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 01 | TC AI01 01 Invalid: empty |  | .\Labels\BarcodeAI01.xml | TC_AI01_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 01 | TC AI01 02 Invalid: more than 14 digits | 123456789876543 | .\Labels\BarcodeAI01.xml | TC_AI01_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 01 | TC AI01 03 Invalid: 12 digits and no Checksum added | 123456789876 | .\Labels\BarcodeAI01.xml | TC_AI01_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 01 | TC AI01 04 Valid: 13 digits and no Checksum added | 1234567898765 | .\Labels\BarcodeAI01.xml | TC_AI01_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 01 | TC AI01 05 Valid: 14 digits and no Checksum added | 12345678987654 | .\Labels\BarcodeAI01.xml | TC_AI01_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 01 | TC AI01 06 Valid: 13 digits and Checksum | 1234567898765 | .\Labels\BarcodeAI01_Checksum.xml | TC_AI01_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 01 | TC AI01 07 Valid: 14 digits and Checksum | 12345678987654 | .\Labels\BarcodeAI01_Checksum.xml | TC_AI01_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 01 | TC AI01 08 Valid: 12 digits and Checksum | 123456789876 | .\Labels\BarcodeAI01_Checksum.xml | TC_AI01_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 02 | TC AI02 01 Invalid: empty |  | .\Labels\BarcodeAI02.xml | TC_AI02_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 02 | TC AI02 02 Invalid: More than 14 characters | 123456789876543 | .\Labels\BarcodeAI02.xml   | TC_AI02_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 02 | TC AI02 03 Invalid: 12 characters and no Checksum added | 123456789876 | .\Labels\BarcodeAI02.xml   | TC_AI02_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 02 | TC AI02 04 Valid: 13 digits and no Checksum | 1234567898765 | .\Labels\BarcodeAI02.xml   | TC_AI02_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 02 | TC AI02 05 Valid: 14 digits and no Checksum | 12345678987654 | .\Labels\BarcodeAI02.xml   | TC_AI02_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 02 | TC AI02 06 Valid: 13 digits and Checksum added | 1234567898765 | .\Labels\BarcodeAI02_Checksum.xml   | TC_AI02_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 02 | TC AI02 07 Valid: 14 digits and Checksum added | 12345678987654 | .\Labels\BarcodeAI02_Checksum.xml   | TC_AI02_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 02 | TC AI02 08 Valid: 12 digits and Checksum added | 123456789876 | .\Labels\BarcodeAI02_Checksum.xml   | TC_AI02_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 10 | TC AI10 01 Invalid: More than 21 digits | X&x-12345678901234561 | .\Labels\BarcodeAI10.xml   | TC_AI10_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 10 | TC AI10 02 Valid: Empy |  | .\Labels\BarcodeAI10.xml   | TC_AI10_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 10 | TC AI10 03 Valid: Less than 20 digits | 738005 | .\Labels\BarcodeAI10.xml   | TC_AI10_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 10 | TC AI10 04 Valid: 20 digits | 12345678901234567890 | .\Labels\BarcodeAI10.xml   | TC_AI10_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 10 | TC AI10 04 Valid: 20 characters with special characters | X&x-1234567890123456 | .\Labels\BarcodeAI10.xml   | TC_AI10_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 11 | TC AI11 01 Invalid: Empty |  | .\Labels\BarcodeAI11.xml   | TC_AI11_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 11 | TC AI11 02 Invalid: Less than 6 digits | 12345 | .\Labels\BarcodeAI11.xml   | TC_AI11_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 11 | TC AI11 03 Invalid: More than 6 digits | 1234567 | .\Labels\BarcodeAI11.xml   | TC_AI11_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 11 | TC AI11 04 Invalid: Not correct date format | 212223 | .\Labels\BarcodeAI11.xml   | TC_AI11_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 11 | TC AI11 05 Valid: Date format | 210615 | .\Labels\BarcodeAI11.xml   | TC_AI11_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 11 | TC AI11 06 Invalid: Not number | hello- | .\Labels\BarcodeAI11.xml   | TC_AI11_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 12 | TC AI12 01 Invalid: Empty |  | .\Labels\BarcodeAI12.xml   | TC_AI12_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 12 | TC AI12 02 Invalid: Less than 6 digits | 12345 | .\Labels\BarcodeAI12.xml   | TC_AI12_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 12 | TC AI12 03 Invalid: More than 6 digits | 1234567 | .\Labels\BarcodeAI12.xml   | TC_AI12_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 12 | TC AI12 04 Invalid: Not correct date format | 212223 | .\Labels\BarcodeAI12.xml   | TC_AI12_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 12 | TC AI12 05 Valid: Date format | 210615 | .\Labels\BarcodeAI12.xml   | TC_AI12_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 12 | TC AI12 06 Invalid: Not number | hello- | .\Labels\BarcodeAI12.xml   | TC_AI12_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 13 | TC AI13 01 Invalid: Empty |  | .\Labels\BarcodeAI13.xml   | TC_AI13_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 13 | TC AI13 02 Invalid: Less than 6 digits | 13345 | .\Labels\BarcodeAI13.xml   | TC_AI13_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 13 | TC AI13 03 Invalid: More than 6 digits | 1334567 | .\Labels\BarcodeAI13.xml   | TC_AI13_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 13 | TC AI13 04 Invalid: Not correct date format | 213223 | .\Labels\BarcodeAI13.xml   | TC_AI13_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 13 | TC AI13 05 Valid: Date format | 210615 | .\Labels\BarcodeAI13.xml   | TC_AI13_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 13 | TC AI13 06 Invalid: Not number | hello- | .\Labels\BarcodeAI13.xml   | TC_AI13_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 15 | TC AI15 01 Invalid: Empty |  | .\Labels\BarcodeAI15.xml   | TC_AI15_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 15 | TC AI15 02 Invalid: Less than 6 digits | 15345 | .\Labels\BarcodeAI15.xml   | TC_AI15_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 15 | TC AI15 03 Invalid: More than 6 digits | 1534567 | .\Labels\BarcodeAI15.xml   | TC_AI15_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 15 | TC AI15 04 Invalid: Not correct date format | 215223 | .\Labels\BarcodeAI15.xml   | TC_AI15_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 15 | TC AI15 05 Valid: Date format | 210615 | .\Labels\BarcodeAI15.xml   | TC_AI15_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 15 | TC AI15 06 Invalid: Not number | hello- | .\Labels\BarcodeAI15.xml   | TC_AI15_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 16 | TC AI16 01 Invalid: Empty |  | .\Labels\BarcodeAI16.xml   | TC_AI16_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 16 | TC AI16 02 Invalid: Less than 6 digits | 16345 | .\Labels\BarcodeAI16.xml   | TC_AI16_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 16 | TC AI16 03 Invalid: More than 6 digits | 1634567 | .\Labels\BarcodeAI16.xml   | TC_AI16_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 16 | TC AI16 04 Invalid: Not correct date format | 216223 | .\Labels\BarcodeAI16.xml   | TC_AI16_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 16 | TC AI16 05 Valid: Date format | 210616 | .\Labels\BarcodeAI16.xml   | TC_AI16_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 16 | TC AI16 06 Invalid: Not number | hello- | .\Labels\BarcodeAI16.xml   | TC_AI16_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 17 | TC AI17 01 Invalid: Empty |  | .\Labels\BarcodeAI17.xml   | TC_AI17_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 17 | TC AI17 02 Invalid: Less than 6 digits | 17345 | .\Labels\BarcodeAI17.xml   | TC_AI17_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 17 | TC AI17 03 Invalid: More than 6 digits | 1734567 | .\Labels\BarcodeAI17.xml   | TC_AI17_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 17 | TC AI17 04 Invalid: Not correct date format | 217223 | .\Labels\BarcodeAI17.xml   | TC_AI17_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 17 | TC AI17 05 Valid: Date format | 210617 | .\Labels\BarcodeAI17.xml   | TC_AI17_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 17 | TC AI17 06 Invalid: Not number | hello- | .\Labels\BarcodeAI17.xml   | TC_AI17_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 20 | TC AI20 01 Invalid: Empty |  | .\Labels\BarcodeAI20.xml   | TC_AI20_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 20 | TC AI20 02 Invalid: Less than 2 digits | 2 | .\Labels\BarcodeAI20.xml   | TC_AI20_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 20 | TC AI20 03 Invalid: More than 2 digits | 222 | .\Labels\BarcodeAI20.xml   | TC_AI20_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 20 | TC AI20 04 Invalid: Not digits | he | .\Labels\BarcodeAI20.xml   | TC_AI20_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 20 | TC AI20 05 Valid: 2 digits | 22 | .\Labels\BarcodeAI20.xml   | TC_AI20_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 21 | TC AI21 01 Invalid: More than 20 digits | 123456789012345675541 | .\Labels\BarcodeAI21.xml   | TC_AI21_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 21 | TC AI21 02 Valid: Empty |  | .\Labels\BarcodeAI21.xml   | TC_AI21_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 21 | TC AI21 03 Valid: Less than 20 digits | 123456789012345675 | .\Labels\BarcodeAI21.xml   | TC_AI21_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 21 | TC AI21 04 Valid: 20 digits | 12345678901234567554 | .\Labels\BarcodeAI21.xml   | TC_AI21_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 21 | TC AI21 05 Valid: Mix numbers and characters | X:x-1234567890123456 | .\Labels\BarcodeAI21.xml   | TC_AI21_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 22 | TC AI22 01 Invalid: More than 20 digits | 123456789012345675541 | .\Labels\BarcodeAI22.xml   | TC_AI22_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 22 | TC AI22 02 Valid: Empty |  | .\Labels\BarcodeAI22.xml   | TC_AI22_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 22 | TC AI22 03 Valid: Less than 20 digits | 123456789012345675 | .\Labels\BarcodeAI22.xml   | TC_AI22_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 22 | TC AI22 04 Valid: 20 digits | 12345678901234567554 | .\Labels\BarcodeAI22.xml   | TC_AI22_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 22 | TC AI22 05 Valid: Mix numbers and characters | X:x-1234567890123456 | .\Labels\BarcodeAI22.xml   | TC_AI22_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 235 | TC AI235 01 Invalid: More than 28 characters | A2345678912345678912345678941 | .\Labels\BarcodeAI235.xml   | TC_AI235_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 235 | TC AI235 02 Valid: Empty |  | .\Labels\BarcodeAI235.xml   | TC_AI235_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 235 | TC AI235 03 Valid: Less than 28 digits | 1234567890123456752 | .\Labels\BarcodeAI235.xml   | TC_AI235_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 235 | TC AI235 04 Valid: Less than 28 characters | X:x!1234567890123456752 | .\Labels\BarcodeAI235.xml   | TC_AI235_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 235 | TC AI235 05 Valid: 28 characters | #234567891234567891234567894 | .\Labels\BarcodeAI235.xml   | TC_AI235_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 240 | TC AI240 01 Invalid: More than 30 characters | A874561230123456789654123054451 | .\Labels\BarcodeAI240.xml   | TC_AI240_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 240 | TC AI240 02 Valid: Empty |  | .\Labels\BarcodeAI240.xml   | TC_AI240_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 240 | TC AI240 03 Valid: Less than 30 digits | 1234567890123456752 | .\Labels\BarcodeAI240.xml   | TC_AI240_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 240 | TC AI240 04 Valid: Less than 30 characters | X:x!1234567890123456752 | .\Labels\BarcodeAI240.xml   | TC_AI240_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 240 | TC AI240 05 Valid: 30 characters | X%x9h8745612301234567896541230 | .\Labels\BarcodeAI240.xml   | TC_AI240_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 241 | TC AI241 01 Invalid: More than 30 characters | A874561230123456789654123054451 | .\Labels\BarcodeAI241.xml   | TC_AI241_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 241 | TC AI241 02 Valid: Empty |  | .\Labels\BarcodeAI241.xml   | TC_AI241_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 241 | TC AI241 03 Valid: Less than 30 digits | 1234567890123456752 | .\Labels\BarcodeAI241.xml   | TC_AI241_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 241 | TC AI241 04 Valid: Less than 30 characters | X:x!1234567890123456752 | .\Labels\BarcodeAI241.xml   | TC_AI241_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 241 | TC AI241 05 Valid: 30 characters | X%xx98745612301234567896541230 | .\Labels\BarcodeAI241.xml   | TC_AI241_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 242 | TC AI242 01 Invalid: More than 6 digits | 1234567 | .\Labels\BarcodeAI242.xml   | TC_AI242_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 242 | TC AI242 02 Valid: Empty |  | .\Labels\BarcodeAI242.xml   | TC_AI242_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 242 | TC AI242 03 Valid: Less than 6 digits | 1234 | .\Labels\BarcodeAI242.xml   | TC_AI242_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 242 | TC AI242 04 Valid: 6 digits | 123456 | .\Labels\BarcodeAI242.xml   | TC_AI242_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 242 | TC AI242 05 Invalid: 6 characters | X%x981 | .\Labels\BarcodeAI242.xml   | TC_AI242_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 243 | TC AI243 01 Invalid: More than 20 digits | 123456789012345675541 | .\Labels\BarcodeAI243.xml   | TC_AI243_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 243 | TC AI243 02 Valid: Empty |  | .\Labels\BarcodeAI243.xml   | TC_AI243_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 243 | TC AI243 03 Valid: Less than 20 digits | 123456789012345675 | .\Labels\BarcodeAI243.xml   | TC_AI243_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 243 | TC AI243 04 Valid: 20 digits | 12345678901234567554 | .\Labels\BarcodeAI243.xml   | TC_AI243_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 243 | TC AI243 05 Valid: Mix numbers and characters | X:x-1234567890123456 | .\Labels\BarcodeAI243.xml   | TC_AI243_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 250 | TC AI250 01 Invalid: More than 30 characters | A874561230123456789654123054451 | .\Labels\BarcodeAI250.xml   | TC_AI250_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 250 | TC AI250 02 Valid: Empty |  | .\Labels\BarcodeAI250.xml   | TC_AI250_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 250 | TC AI250 03 Valid: Less than 30 digits | 1234567890123456752 | .\Labels\BarcodeAI250.xml   | TC_AI250_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 250 | TC AI250 04 Valid: Less than 30 characters | X:x!1234567890123456752 | .\Labels\BarcodeAI250.xml   | TC_AI250_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 250 | TC AI250 05 Valid: 30 characters | X%x98745612301234567896541s230 | .\Labels\BarcodeAI250.xml   | TC_AI250_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 251 | TC AI251 01 Invalid: More than 30 characters | A874561230123456789654123054451 | .\Labels\BarcodeAI251.xml   | TC_AI251_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 251 | TC AI251 02 Valid: Empty |  | .\Labels\BarcodeAI251.xml   | TC_AI251_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 251 | TC AI251 03 Valid: Less than 30 digits | 1234567890123456752 | .\Labels\BarcodeAI251.xml   | TC_AI251_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 251 | TC AI251 04 Valid: Less than 30 characters | X:x!1234567890123456752 | .\Labels\BarcodeAI251.xml   | TC_AI251_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 251 | TC AI251 05 Valid: 30 characters | X%x98745612301234567896541s230 | .\Labels\BarcodeAI251.xml   | TC_AI251_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 253 | TC AI253 01 Invalid: Empty |  | .\Labels\BarcodeAI253.xml   | TC_AI253_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 253 | TC AI253 02 Invalid: Less than 13 digits | 123456789123 | .\Labels\BarcodeAI253.xml   | TC_AI253_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 253 | TC AI253 03 Invalid: First 13 characters | aa12345678912 | .\Labels\BarcodeAI253.xml   | TC_AI253_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 253 | TC AI253 04 Invalid: More than 30 characters | 9874561230123456789654123054451 | .\Labels\BarcodeAI253.xml   | TC_AI253_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 253 | TC AI253 05 Valid: 13 digits and No Checksum | 0123456789234 | .\Labels\BarcodeAI253.xml   | TC_AI253_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 253 | TC AI253 06 Valid: 30 characters and No Checksum | 2530123456789Abc!123456789Abc! | .\Labels\BarcodeAI253.xml   | TC_AI253_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 253 | TC AI253 07 Valid: 13 digits and Checksum | 0123456789234 | .\Labels\BarcodeAI253_Checksum.xml   | TC_AI253_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 253 | TC AI253 08 Valid: 30 characters and Checksum | 1234567891234A56789123456789123 | .\Labels\BarcodeAI253_Checksum.xml   | TC_AI253_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 254 | TC AI254 01 Invalid: More than 20 characters | 123456789012345675234 | .\Labels\BarcodeAI254.xml   | TC_AI254_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 254 | TC AI254 02 Valid: Empty |  | .\Labels\BarcodeAI254.xml   | TC_AI254_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 254 | TC AI254 03 Valid: Less than 20 characters | X%x987456123012aaaa | .\Labels\BarcodeAI254.xml   | TC_AI254_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 254 | TC AI254 04 Valid: 30 characters | X%x987456123012aaaaa | .\Labels\BarcodeAI254.xml   | TC_AI254_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 255 | TC AI255 01 Invalid: Empty |  | .\Labels\BarcodeAI255.xml   | TC_AI255_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 255 | TC AI255 02 Invalid: Less than 13 digits | 123456789123 | .\Labels\BarcodeAI255.xml   | TC_AI255_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 255 | TC AI255 03 Invalid: More than 25 digits | 98745612301234567896541230 | .\Labels\BarcodeAI255.xml   | TC_AI255_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 255 | TC AI255 04 Invalid: Characters included | Helo9874561230123456789654 | .\Labels\BarcodeAI255.xml   | TC_AI255_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 255 | TC AI255 05 Valid: 13 digits and No Checksum | 0123456789234 | .\Labels\BarcodeAI255.xml   | TC_AI255_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 255 | TC AI255 06 Valid: 25 digits and No Checksum | 1234567898765432123456789 | .\Labels\BarcodeAI255.xml   | TC_AI255_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 255 | TC AI255 07 Valid: 13 digits and Checksum | 1234567898765 | .\Labels\BarcodeAI255_Checksum.xml   | TC_AI255_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 255 | TC AI255 08 Valid: 24 digits and Checksum | 123456789876543212345678 | .\Labels\BarcodeAI255_Checksum.xml   | TC_AI255_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 255 | TC AI255 09 Valid: 25 digits and Checksum | 1234567898765432123456789 | .\Labels\BarcodeAI255_Checksum.xml   | TC_AI255_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 255 | TC AI255 10 Invalid: 24 digits and No Checksum | 123456789876543212345678 | .\Labels\BarcodeAI255.xml   | TC_AI255_10.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 30 | TC AI30 01 Invalid: Not number | hello-11 | .\Labels\BarcodeAI30.xml   | TC_AI30_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 30 | TC AI30 02 Invalid: More than 8 digits | 085223323 | .\Labels\BarcodeAI30.xml   | TC_AI30_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 30 | TC AI30 03 Valid: Less than 8 digits | 085223 | .\Labels\BarcodeAI30.xml   | TC_AI30_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 30 | TC AI30 04 Valid: 8 digits | 08522332 | .\Labels\BarcodeAI30.xml   | TC_AI30_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 30 | TC AI30 05 Valid: Empty |  | .\Labels\BarcodeAI30.xml   | TC_AI30_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
