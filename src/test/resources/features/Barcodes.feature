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
    | Sato | 20 | TC AI20 01 Invalid: Empty |  | .\Labels\BarcodeAI20.xml   | AC_AI20_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 20 | TC AI20 02 Invalid: Less than 2 digits | 2 | .\Labels\BarcodeAI20.xml   | AC_AI20_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 20 | TC AI20 03 Invalid: More than 2 digits | 222 | .\Labels\BarcodeAI20.xml   | AC_AI20_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 20 | TC AI20 04 Invalid: Not digits | he | .\Labels\BarcodeAI20.xml   | AC_AI20_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 20 | TC AI20 05 Valid: 2 digits | 22 | .\Labels\BarcodeAI20.xml   | AC_AI20_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 21 | TC AI21 01 Invalid: More than 20 digits | 123456789012345675541 | .\Labels\BarcodeAI21.xml   | AC_AI21_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 21 | TC AI21 02 Valid: Empty |  | .\Labels\BarcodeAI21.xml   | AC_AI21_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 21 | TC AI21 03 Valid: Less than 20 digits | 123456789012345675 | .\Labels\BarcodeAI21.xml   | AC_AI21_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 21 | TC AI21 04 Valid: 20 digits | 12345678901234567554 | .\Labels\BarcodeAI21.xml   | AC_AI21_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 21 | TC AI21 05 Valid: Mix numbers and characters | X:x-1234567890123456 | .\Labels\BarcodeAI21.xml   | AC_AI21_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 22 | TC AI22 01 Invalid: More than 20 digits | 123456789012345675541 | .\Labels\BarcodeAI22.xml   | AC_AI22_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 22 | TC AI22 02 Valid: Empty |  | .\Labels\BarcodeAI22.xml   | AC_AI22_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 22 | TC AI22 03 Valid: Less than 20 digits | 123456789012345675 | .\Labels\BarcodeAI22.xml   | AC_AI22_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 22 | TC AI22 04 Valid: 20 digits | 12345678901234567554 | .\Labels\BarcodeAI22.xml   | AC_AI22_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 22 | TC AI22 05 Valid: Mix numbers and characters | X:x-1234567890123456 | .\Labels\BarcodeAI22.xml   | AC_AI22_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 235 | TC AI235 01 Invalid: More than 28 characters | A2345678912345678912345678941 | .\Labels\BarcodeAI235.xml   | AC_AI235_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 235 | TC AI235 02 Valid: Empty |  | .\Labels\BarcodeAI235.xml   | AC_AI235_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 235 | TC AI235 03 Valid: Less than 28 digits | 1234567890123456752 | .\Labels\BarcodeAI235.xml   | AC_AI235_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 235 | TC AI235 04 Valid: Less than 28 characters | X:x!1234567890123456752 | .\Labels\BarcodeAI235.xml   | AC_AI235_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 235 | TC AI235 05 Valid: 28 characters | #234567891234567891234567894 | .\Labels\BarcodeAI235.xml   | AC_AI235_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 240 | TC AI240 01 Invalid: More than 30 characters | A874561230123456789654123054451 | .\Labels\BarcodeAI240.xml   | AC_AI240_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 240 | TC AI240 02 Valid: Empty |  | .\Labels\BarcodeAI240.xml   | AC_AI240_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 240 | TC AI240 03 Valid: Less than 30 digits | 1234567890123456752 | .\Labels\BarcodeAI240.xml   | AC_AI240_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 240 | TC AI240 04 Valid: Less than 30 characters | X:x!1234567890123456752 | .\Labels\BarcodeAI240.xml   | AC_AI240_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 240 | TC AI240 05 Valid: 30 characters | X%x9h8745612301234567896541230 | .\Labels\BarcodeAI240.xml   | AC_AI240_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 241 | TC AI241 01 Invalid: More than 30 characters | A874561230123456789654123054451 | .\Labels\BarcodeAI241.xml   | AC_AI241_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 241 | TC AI241 02 Valid: Empty |  | .\Labels\BarcodeAI241.xml   | AC_AI241_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 241 | TC AI241 03 Valid: Less than 30 digits | 1234567890123456752 | .\Labels\BarcodeAI241.xml   | AC_AI241_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 241 | TC AI241 04 Valid: Less than 30 characters | X:x!1234567890123456752 | .\Labels\BarcodeAI241.xml   | AC_AI241_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 241 | TC AI241 05 Valid: 30 characters | X%xx98745612301234567896541230 | .\Labels\BarcodeAI241.xml   | AC_AI241_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 242 | TC AI242 01 Invalid: More than 6 digits | 1234567 | .\Labels\BarcodeAI242.xml   | AC_AI242_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 242 | TC AI242 02 Valid: Empty |  | .\Labels\BarcodeAI242.xml   | AC_AI242_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 242 | TC AI242 03 Valid: Less than 6 digits | 1234 | .\Labels\BarcodeAI242.xml   | AC_AI242_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 242 | TC AI242 04 Valid: 6 digits | 123456 | .\Labels\BarcodeAI242.xml   | AC_AI242_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 242 | TC AI242 05 Invalid: 6 characters | X%x981 | .\Labels\BarcodeAI242.xml   | AC_AI242_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 243 | TC AI243 01 Invalid: More than 20 digits | 123456789012345675541 | .\Labels\BarcodeAI243.xml   | AC_AI243_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 243 | TC AI243 02 Valid: Empty |  | .\Labels\BarcodeAI243.xml   | AC_AI243_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 243 | TC AI243 03 Valid: Less than 20 digits | 123456789012345675 | .\Labels\BarcodeAI243.xml   | AC_AI243_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 243 | TC AI243 04 Valid: 20 digits | 12345678901234567554 | .\Labels\BarcodeAI243.xml   | AC_AI243_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 243 | TC AI243 05 Valid: Mix numbers and characters | X:x-1234567890123456 | .\Labels\BarcodeAI243.xml   | AC_AI243_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 250 | TC AI250 01 Invalid: More than 30 characters | A874561230123456789654123054451 | .\Labels\BarcodeAI250.xml   | AC_AI250_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 250 | TC AI250 02 Valid: Empty |  | .\Labels\BarcodeAI250.xml   | AC_AI250_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 250 | TC AI250 03 Valid: Less than 30 digits | 1234567890123456752 | .\Labels\BarcodeAI250.xml   | AC_AI250_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 250 | TC AI250 04 Valid: Less than 30 characters | X:x!1234567890123456752 | .\Labels\BarcodeAI250.xml   | AC_AI250_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 250 | TC AI250 05 Valid: 30 characters | X%x98745612301234567896541s230 | .\Labels\BarcodeAI250.xml   | AC_AI250_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 251 | TC AI251 01 Invalid: More than 30 characters | A874561230123456789654123054451 | .\Labels\BarcodeAI251.xml   | AC_AI251_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 251 | TC AI251 02 Valid: Empty |  | .\Labels\BarcodeAI251.xml   | AC_AI251_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 251 | TC AI251 03 Valid: Less than 30 digits | 1234567890123456752 | .\Labels\BarcodeAI251.xml   | AC_AI251_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 251 | TC AI251 04 Valid: Less than 30 characters | X:x!1234567890123456752 | .\Labels\BarcodeAI251.xml   | AC_AI251_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 251 | TC AI251 05 Valid: 30 characters | X%x98745612301234567896541s230 | .\Labels\BarcodeAI251.xml   | AC_AI251_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 253 | TC AI253 01 Invalid: Empty |  | .\Labels\BarcodeAI253.xml   | AC_AI253_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 253 | TC AI253 02 Invalid: Less than 13 digits | 123456789123 | .\Labels\BarcodeAI253.xml   | AC_AI253_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 253 | TC AI253 03 Invalid: First 13 characters | aa12345678912 | .\Labels\BarcodeAI253.xml   | AC_AI253_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 253 | TC AI253 04 Invalid: More than 30 characters | 9874561230123456789654123054451 | .\Labels\BarcodeAI253.xml   | AC_AI253_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 253 | TC AI253 05 Valid: 13 digits and No Checksum | 0123456789234 | .\Labels\BarcodeAI253.xml   | AC_AI253_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 253 | TC AI253 06 Valid: 30 characters and No Checksum | 2530123456789Abc!123456789Abc! | .\Labels\BarcodeAI253.xml   | AC_AI253_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 253 | TC AI253 07 Valid: 13 digits and Checksum | 0123456789234 | .\Labels\BarcodeAI253_Checksum.xml   | AC_AI253_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 253 | TC AI253 08 Valid: 30 characters and Checksum | 1234567891234A56789123456789123 | .\Labels\BarcodeAI253_Checksum.xml   | AC_AI253_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 254 | TC AI254 01 Invalid: More than 20 characters | 123456789012345675234 | .\Labels\BarcodeAI254.xml   | AC_AI254_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 254 | TC AI254 02 Valid: Empty |  | .\Labels\BarcodeAI254.xml   | AC_AI254_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 254 | TC AI254 03 Valid: Less than 20 characters | X%x987456123012aaaa | .\Labels\BarcodeAI254.xml   | AC_AI254_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 254 | TC AI254 04 Valid: 30 characters | X%x987456123012aaaaa | .\Labels\BarcodeAI254.xml   | AC_AI254_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 255 | TC AI255 01 Invalid: Empty |  | .\Labels\BarcodeAI255.xml   | AC_AI255_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 255 | TC AI255 02 Invalid: Less than 13 digits | 123456789123 | .\Labels\BarcodeAI255.xml   | AC_AI255_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 255 | TC AI255 03 Invalid: More than 25 digits | 98745612301234567896541230 | .\Labels\BarcodeAI255.xml   | AC_AI255_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 255 | TC AI255 04 Invalid: Characters included | Helo9874561230123456789654 | .\Labels\BarcodeAI255.xml   | AC_AI255_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 255 | TC AI255 05 Valid: 13 digits and No Checksum | 0123456789234 | .\Labels\BarcodeAI255.xml   | AC_AI255_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 255 | TC AI255 06 Valid: 25 digits and No Checksum | 1234567898765432123456789 | .\Labels\BarcodeAI255.xml   | AC_AI255_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 255 | TC AI255 07 Valid: 13 digits and Checksum | 1234567898765 | .\Labels\BarcodeAI255_Checksum.xml   | AC_AI255_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 255 | TC AI255 08 Valid: 24 digits and Checksum | 123456789876543212345678 | .\Labels\BarcodeAI255_Checksum.xml   | AC_AI255_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 255 | TC AI255 09 Valid: 25 digits and Checksum | 1234567898765432123456789 | .\Labels\BarcodeAI255_Checksum.xml   | AC_AI255_09.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 255 | TC AI255 10 Invalid: 24 digits and No Checksum | 123456789876543212345678 | .\Labels\BarcodeAI255.xml   | AC_AI255_10.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 30 | TC AI30 01 Invalid: Not number | hello-11 | .\Labels\BarcodeAI30.xml   | TC_AI30_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 30 | TC AI30 02 Invalid: More than 8 digits | 085223323 | .\Labels\BarcodeAI30.xml   | TC_AI30_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 30 | TC AI30 03 Valid: Less than 8 digits | 085223 | .\Labels\BarcodeAI30.xml   | TC_AI30_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 30 | TC AI30 04 Valid: 8 digits | 08522332 | .\Labels\BarcodeAI30.xml   | TC_AI30_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 30 | TC AI30 05 Valid: Empty |  | .\Labels\BarcodeAI30.xml   | TC_AI30_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
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
    | Sato | 400 | TC AI400 01 Invalid: More than 30 characters | #@74561230123456789654123054456 | .\Labels\BarcodeAI400.xml   | TC_AI400_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 400 | TC AI400 02 Valid: Empty |  | .\Labels\BarcodeAI400.xml   | TC_AI400_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 400 | TC AI400 03 Valid: Less than 30 characters | X%x98745612301234567896541230 | .\Labels\BarcodeAI400.xml   | TC_AI400_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 400 | TC AI400 04 Valid: 30 characters | X%x987456123012345678965412302 | .\Labels\BarcodeAI400.xml   | TC_AI400_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 401 | TC AI401 01 Invalid: More than 30 characters | #@74561230123456789654123054456 | .\Labels\BarcodeAI401.xml   | TC_AI401_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 401 | TC AI401 02 Valid: Empty |  | .\Labels\BarcodeAI401.xml   | TC_AI401_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 401 | TC AI401 03 Valid: Less than 30 characters and no checksum | X%x98745612301234567896541230 | .\Labels\BarcodeAI401.xml   | TC_AI401_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 401 | TC AI401 04 Valid: 30 characters and checksum | X%x987456123012345678965412302 | .\Labels\BarcodeAI401_Checksum.xml   | TC_AI401_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 401 | TC AI401 04 Valid: 29 characters and checksum | X%x98745612301234567896541230 | .\Labels\BarcodeAI401_Checksum.xml   | TC_AI401_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
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
    | Sato | 710 | TC AI710 01 Invalid: More than 20 characters | 01234567898765432101E | .\Labels\BarcodeAI710.xml   | TC_AI710_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 710 | TC AI710 02 Valid: Empty |  | .\Labels\BarcodeAI710.xml   | TC_AI710_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 710 | TC AI710 03 Valid: Less than 20 characters | 0123456789876543Ed | .\Labels\BarcodeAI710.xml   | TC_AI710_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 710 | TC AI710 04 Valid: 20 characters | 0123456789876543210e | .\Labels\BarcodeAI710.xml   | TC_AI710_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 711 | TC AI711 01 Invalid: More than 20 characters | 01234567898765432101E | .\Labels\BarcodeAI711.xml   | TC_AI711_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 711 | TC AI711 02 Valid: Empty |  | .\Labels\BarcodeAI711.xml   | TC_AI711_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 711 | TC AI711 03 Valid: Less than 20 characters | 0123456789876543Ed | .\Labels\BarcodeAI711.xml   | TC_AI711_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 711 | TC AI711 04 Valid: 20 characters | 0123456789876543210e | .\Labels\BarcodeAI711.xml   | TC_AI711_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 712 | TC AI712 01 Invalid: More than 20 characters | 01234567898765432101E | .\Labels\BarcodeAI712.xml   | TC_AI712_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 712 | TC AI712 02 Valid: Empty |  | .\Labels\BarcodeAI712.xml   | TC_AI712_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 712 | TC AI712 03 Valid: Less than 20 characters | 0123456789876543Ed | .\Labels\BarcodeAI712.xml   | TC_AI712_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 712 | TC AI712 04 Valid: 20 characters | 0123456789876543210e | .\Labels\BarcodeAI712.xml   | TC_AI712_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 713 | TC AI713 01 Invalid: More than 20 characters | 01234567898765432101E | .\Labels\BarcodeAI713.xml   | TC_AI713_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 713 | TC AI713 02 Valid: Empty |  | .\Labels\BarcodeAI713.xml   | TC_AI713_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 713 | TC AI713 03 Valid: Less than 20 characters | 0123456789876543Ed | .\Labels\BarcodeAI713.xml   | TC_AI713_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 713 | TC AI713 04 Valid: 20 characters | 0123456789876543210e | .\Labels\BarcodeAI713.xml   | TC_AI713_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 714 | TC AI714 01 Invalid: More than 20 characters | 01234567898765432101E | .\Labels\BarcodeAI714.xml   | TC_AI714_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 714 | TC AI714 02 Valid: Empty |  | .\Labels\BarcodeAI714.xml   | TC_AI714_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 714 | TC AI714 03 Valid: Less than 20 characters | 0123456789876543Ed | .\Labels\BarcodeAI714.xml   | TC_AI714_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 714 | TC AI714 04 Valid: 20 characters | 0123456789876543210e | .\Labels\BarcodeAI714.xml   | TC_AI714_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7230 | TC AI7230 01 Invalid: less than 2 characters | $ | .\Labels\BarcodeAI7230.xml   | TC_AI7230_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7230 | TC AI7230 02 Invalid: Empty |  | .\Labels\BarcodeAI7230.xml   | TC_AI7230_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7230 | TC AI7230 03 Invalid: More than 30 characters | 1110123456d78987654321234567898 | .\Labels\BarcodeAI7230.xml   | TC_AI7230_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7230 | TC AI7230 04 Valid: 2 characters | 01 | .\Labels\BarcodeAI7230.xml   | TC_AI7230_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7230 | TC AI7230 05 Valid: 30 characters | 1110123456d7898765432123456789 | .\Labels\BarcodeAI7230.xml   | TC_AI7230_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7230 | TC AI7230 06 Valid: count(number)>2 and count(number)<30 | 1110123456d789876543212345678 | .\Labels\BarcodeAI7230.xml   | TC_AI7230_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7231 | TC AI7231 01 Invalid: less than 2 characters | $ | .\Labels\BarcodeAI7231.xml   | TC_AI7231_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7231 | TC AI7231 02 Invalid: Empty |  | .\Labels\BarcodeAI7231.xml   | TC_AI7231_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7231 | TC AI7231 03 Invalid: More than 30 characters | 1110123456d78987654321234567898 | .\Labels\BarcodeAI7231.xml   | TC_AI7231_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7231 | TC AI7231 04 Valid: 2 characters | 01 | .\Labels\BarcodeAI7231.xml   | TC_AI7231_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7231 | TC AI7231 05 Valid: 30 characters | 1110123456d7898765432123456789 | .\Labels\BarcodeAI7231.xml   | TC_AI7231_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7231 | TC AI7231 06 Valid: count(number)>2 and count(number)<30 | 1110123456d789876543212345678 | .\Labels\BarcodeAI7231.xml   | TC_AI7231_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7232 | TC AI7232 01 Invalid: less than 2 characters | $ | .\Labels\BarcodeAI7232.xml   | TC_AI7232_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7232 | TC AI7232 02 Invalid: Empty |  | .\Labels\BarcodeAI7232.xml   | TC_AI7232_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7232 | TC AI7232 03 Invalid: More than 30 characters | 1110123456d78987654321234567898 | .\Labels\BarcodeAI7232.xml   | TC_AI7232_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7232 | TC AI7232 04 Valid: 2 characters | 01 | .\Labels\BarcodeAI7232.xml   | TC_AI7232_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7232 | TC AI7232 05 Valid: 30 characters | 1110123456d7898765432123456789 | .\Labels\BarcodeAI7232.xml   | TC_AI7232_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7232 | TC AI7232 06 Valid: count(number)>2 and count(number)<30 | 1110123456d789876543212345678 | .\Labels\BarcodeAI7232.xml   | TC_AI7232_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7233 | TC AI7233 01 Invalid: less than 2 characters | $ | .\Labels\BarcodeAI7233.xml   | TC_AI7233_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7233 | TC AI7233 02 Invalid: Empty |  | .\Labels\BarcodeAI7233.xml   | TC_AI7233_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7233 | TC AI7233 03 Invalid: More than 30 characters | 1110123456d78987654321234567898 | .\Labels\BarcodeAI7233.xml   | TC_AI7233_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7233 | TC AI7233 04 Valid: 2 characters | 01 | .\Labels\BarcodeAI7233.xml   | TC_AI7233_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7233 | TC AI7233 05 Valid: 30 characters | 1110123456d7898765432123456789 | .\Labels\BarcodeAI7233.xml   | TC_AI7233_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7233 | TC AI7233 06 Valid: count(number)>2 and count(number)<30 | 1110123456d789876543212345678 | .\Labels\BarcodeAI7233.xml   | TC_AI7233_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7234 | TC AI7234 01 Invalid: less than 2 characters | $ | .\Labels\BarcodeAI7234.xml   | TC_AI7234_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7234 | TC AI7234 02 Invalid: Empty |  | .\Labels\BarcodeAI7234.xml   | TC_AI7234_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7234 | TC AI7234 03 Invalid: More than 30 characters | 1110123456d78987654321234567898 | .\Labels\BarcodeAI7234.xml   | TC_AI7234_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7234 | TC AI7234 04 Valid: 2 characters | 01 | .\Labels\BarcodeAI7234.xml   | TC_AI7234_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7234 | TC AI7234 05 Valid: 30 characters | 1110123456d7898765432123456789 | .\Labels\BarcodeAI7234.xml   | TC_AI7234_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7234 | TC AI7234 06 Valid: count(number)>2 and count(number)<30 | 1110123456d789876543212345678 | .\Labels\BarcodeAI7234.xml   | TC_AI7234_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7235 | TC AI7235 01 Invalid: less than 2 characters | $ | .\Labels\BarcodeAI7235.xml   | TC_AI7235_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7235 | TC AI7235 02 Invalid: Empty |  | .\Labels\BarcodeAI7235.xml   | TC_AI7235_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7235 | TC AI7235 03 Invalid: More than 30 characters | 1110123456d78987654321234567898 | .\Labels\BarcodeAI7235.xml   | TC_AI7235_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7235 | TC AI7235 04 Valid: 2 characters | 01 | .\Labels\BarcodeAI7235.xml   | TC_AI7235_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7235 | TC AI7235 05 Valid: 30 characters | 1110123456d7898765432123456789 | .\Labels\BarcodeAI7235.xml   | TC_AI7235_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7235 | TC AI7235 06 Valid: count(number)>2 and count(number)<30 | 1110123456d789876543212345678 | .\Labels\BarcodeAI7235.xml   | TC_AI7235_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7236 | TC AI7236 01 Invalid: less than 2 characters | $ | .\Labels\BarcodeAI7236.xml   | TC_AI7236_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7236 | TC AI7236 02 Invalid: Empty |  | .\Labels\BarcodeAI7236.xml   | TC_AI7236_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7236 | TC AI7236 03 Invalid: More than 30 characters | 1110123456d78987654321234567898 | .\Labels\BarcodeAI7236.xml   | TC_AI7236_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7236 | TC AI7236 04 Valid: 2 characters | 01 | .\Labels\BarcodeAI7236.xml   | TC_AI7236_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7236 | TC AI7236 05 Valid: 30 characters | 1110123456d7898765432123456789 | .\Labels\BarcodeAI7236.xml   | TC_AI7236_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7236 | TC AI7236 06 Valid: count(number)>2 and count(number)<30 | 1110123456d789876543212345678 | .\Labels\BarcodeAI7236.xml   | TC_AI7236_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7237 | TC AI7237 01 Invalid: less than 2 characters | $ | .\Labels\BarcodeAI7237.xml   | TC_AI7237_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7237 | TC AI7237 02 Invalid: Empty |  | .\Labels\BarcodeAI7237.xml   | TC_AI7237_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7237 | TC AI7237 03 Invalid: More than 30 characters | 1110123456d78987654321234567898 | .\Labels\BarcodeAI7237.xml   | TC_AI7237_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7237 | TC AI7237 04 Valid: 2 characters | 01 | .\Labels\BarcodeAI7237.xml   | TC_AI7237_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7237 | TC AI7237 05 Valid: 30 characters | 1110123456d7898765432123456789 | .\Labels\BarcodeAI7237.xml   | TC_AI7237_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7237 | TC AI7237 06 Valid: count(number)>2 and count(number)<30 | 1110123456d789876543212345678 | .\Labels\BarcodeAI7237.xml   | TC_AI7237_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7238 | TC AI7238 01 Invalid: less than 2 characters | $ | .\Labels\BarcodeAI7238.xml   | TC_AI7238_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7238 | TC AI7238 02 Invalid: Empty |  | .\Labels\BarcodeAI7238.xml   | TC_AI7238_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7238 | TC AI7238 03 Invalid: More than 30 characters | 1110123456d78987654321234567898 | .\Labels\BarcodeAI7238.xml   | TC_AI7238_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7238 | TC AI7238 04 Valid: 2 characters | 01 | .\Labels\BarcodeAI7238.xml   | TC_AI7238_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7238 | TC AI7238 05 Valid: 30 characters | 1110123456d7898765432123456789 | .\Labels\BarcodeAI7238.xml   | TC_AI7238_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7238 | TC AI7238 06 Valid: count(number)>2 and count(number)<30 | 1110123456d789876543212345678 | .\Labels\BarcodeAI7238.xml   | TC_AI7238_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7239 | TC AI7239 01 Invalid: less than 2 characters | $ | .\Labels\BarcodeAI7239.xml   | TC_AI7239_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7239 | TC AI7239 02 Invalid: Empty |  | .\Labels\BarcodeAI7239.xml   | TC_AI7239_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7239 | TC AI7239 03 Invalid: More than 30 characters | 1110123456d78987654321234567898 | .\Labels\BarcodeAI7239.xml   | TC_AI7239_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7239 | TC AI7239 04 Valid: 2 characters | 01 | .\Labels\BarcodeAI7239.xml   | TC_AI7239_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7239 | TC AI7239 05 Valid: 30 characters | 1110123456d7898765432123456789 | .\Labels\BarcodeAI7239.xml   | TC_AI7239_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 7239 | TC AI7239 06 Valid: count(number)>2 and count(number)<30 | 1110123456d789876543212345678 | .\Labels\BarcodeAI7239.xml   | TC_AI7239_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8001 | TC AI8001 01 Invalid: More than 14 digits | 123456789123456 | .\Labels\BarcodeAI8001.xml   | TC_AI8001_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8001 | TC AI8001 02 Invalid: Empty |  | .\Labels\BarcodeAI8001.xml   | TC_AI8001_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8001 | TC AI8001 03 Invalid: Less than 14 digits | 1234567891232 | .\Labels\BarcodeAI8001.xml   | TC_AI8001_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8001 | TC AI8001 04 Valid: 14 digits | 12345678912341 | .\Labels\BarcodeAI8001.xml   | TC_AI8001_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8001 | TC AI8001 05 Invalid: Not number | 123456789123E1 | .\Labels\BarcodeAI8001.xml   | TC_AI8001_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8002 | TC AI8002 01 Invalid: More than 20 characters | 01234567898765432101E | .\Labels\BarcodeAI8002.xml   | TC_AI8002_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8002 | TC AI8002 02 Valid: Empty |  | .\Labels\BarcodeAI8002.xml   | TC_AI8002_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8002 | TC AI8002 03 Valid: Less than 20 characters | 0123456789876543Ed | .\Labels\BarcodeAI8002.xml   | TC_AI8002_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8002 | TC AI8002 04 Valid: 20 characters | 0123456789876543210e | .\Labels\BarcodeAI8002.xml   | TC_AI8002_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8003 | TC AI8003 01 Invalid: less than 14 digits | 1234567890123 | .\Labels\BarcodeAI8003.xml   | TC_AI8003_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8003 | TC AI8003 02 Invalid: Empty |  | .\Labels\BarcodeAI8003.xml   | TC_AI8003_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8003 | TC AI8003 03 Invalid: 14 prefix is not number | 1234567890123E | .\Labels\BarcodeAI8003.xml   | TC_AI8003_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8003 | TC AI8003 04 Invalid: More than 30 characters | 1110123456d78987654321234567898 | .\Labels\BarcodeAI8003.xml   | TC_AI8003_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8003 | TC AI8003 05 Valid: 14 digits | 01234567891234 | .\Labels\BarcodeAI8003.xml   | TC_AI8003_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8003 | TC AI8003 06 Valid: 30 characters | 1110123456d7898765432123456789 | .\Labels\BarcodeAI8003.xml   | TC_AI8003_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8003 | TC AI8003 07 Valid: count(number)>14 and count(number)<30 | 1110123456d789876543212345678 | .\Labels\BarcodeAI8003.xml   | TC_AI8003_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8004 | TC AI8004 01 Invalid: More than 30 characters | 01234567898765432101Easdfghjklo | .\Labels\BarcodeAI8004.xml   | TC_AI8004_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8004 | TC AI8004 02 Valid: Empty |  | .\Labels\BarcodeAI8004.xml   | TC_AI8004_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8004 | TC AI8004 03 Valid: Less than 30 characters | 01234567898765432101Easdfghjk | .\Labels\BarcodeAI8004.xml   | TC_AI8004_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8004 | TC AI8004 04 Valid: 30 characters | 01234567898765432101 Easdfghjk | .\Labels\BarcodeAI8004.xml   | TC_AI8004_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8005 | TC AI8005 01 Invalid: More than 6 digits | 1234567 | .\Labels\BarcodeAI8005.xml   | TC_AI8005_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8005 | TC AI8005 02 Invalid: Empty |  | .\Labels\BarcodeAI8005.xml   | TC_AI8005_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8005 | TC AI8005 03 Invalid: Less than 6 digits | 12345 | .\Labels\BarcodeAI8005.xml   | TC_AI8005_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8005 | TC AI8005 04 Valid: 6 digits | 123456 | .\Labels\BarcodeAI8005.xml   | TC_AI8005_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8005 | TC AI8005 05 Invalid: Not number | hello1 | .\Labels\BarcodeAI8005.xml   | TC_AI8005_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8006 | TC AI8006 01 Invalid: More than 18 digits | 1234567898765430000 | .\Labels\BarcodeAI8006.xml   | TC_AI8006_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8006 | TC AI8006 02 Invalid: Empty |  | .\Labels\BarcodeAI8006.xml   | TC_AI8006_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8006 | TC AI8006 03 Invalid: Less than 18 digits | 12345678987654321 | .\Labels\BarcodeAI8006.xml   | TC_AI8006_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8006 | TC AI8006 04 Valid: 18 digits | 123456789876543212 | .\Labels\BarcodeAI8006.xml   | TC_AI8006_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8006 | TC AI8006 05 Invalid: Not number | hello world duong! | .\Labels\BarcodeAI8006.xml   | TC_AI8006_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8007 | TC AI8007 01 Invalid: More than 34 characters | 01234567898765432101Easdfghjklo 123 | .\Labels\BarcodeAI8007.xml   | TC_AI8007_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8007 | TC AI8007 02 Valid: Empty |  | .\Labels\BarcodeAI8007.xml   | TC_AI8007_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8007 | TC AI8007 03 Valid: Less than 34 characters | 01234567898765432101Easdfghjk 123 | .\Labels\BarcodeAI8007.xml   | TC_AI8007_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8007 | TC AI8007 04 Valid: 34 characters | 01234567898765432101 Easdfghjk 123 | .\Labels\BarcodeAI8007.xml   | TC_AI8007_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8008 | TC AI8008 01 Invalid: Empty |  | .\Labels\BarcodeAI8008.xml   | AC_AI8008_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8008 | TC AI8008 02 Invalid: Less than 8 digits | 1234567 | .\Labels\BarcodeAI8008.xml   | AC_AI8008_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8008 | TC AI8008 03 Invalid: More than 12 digits | 9874561230121 | .\Labels\BarcodeAI8008.xml   | AC_AI8008_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8008 | TC AI8008 04 Invalid: Characters included in prefix | Helo98745612 | .\Labels\BarcodeAI8008.xml   | AC_AI8008_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8008 | TC AI8008 05 Valid: 8 digits | 01234567 | .\Labels\BarcodeAI8008.xml   | AC_AI8008_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8008 | TC AI8008 06 Valid: 12 digits | 123456789011 | .\Labels\BarcodeAI8008.xml   | AC_AI8008_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8008 | TC AI8008 07 Valid: count (number) > 8 and count (number) < 12 | 12345678987 | .\Labels\BarcodeAI8008.xml   | AC_AI8008_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8008 | TC AI8008 08 Invalid: Characters included in suffix | 1234567898h# | .\Labels\BarcodeAI8008.xml   | AC_AI8008_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8009 | TC AI8009 01 Invalid: More than 50 characters | ABC123456789876543212345678987654321234567898765432 | .\Labels\BarcodeAI8009.xml   | TC_AI8009_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8009 | TC AI8009 02 Valid: Empty |  | .\Labels\BarcodeAI8009.xml   | TC_AI8009_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8009 | TC AI8009 03 Valid: Less than 50 characters | 01234567898765432101Easdfghjk 123 | .\Labels\BarcodeAI8009.xml   | TC_AI8009_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8009 | TC AI8009 04 Valid: 50 characters | ABC12345678 9876543212345 678987654 32123456 hello | .\Labels\BarcodeAI8009.xml   | TC_AI8009_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8010 | TC AI8010 01 Invalid: More than 30 characters | ABC1234567898765432123456789876 | .\Labels\BarcodeAI8010.xml   | TC_AI8010_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8010 | TC AI8010 02 Valid: Empty |  | .\Labels\BarcodeAI8010.xml   | TC_AI8010_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8010 | TC AI8010 03 Valid: Less than 30 characters | ABC12345678987654321234567898 | .\Labels\BarcodeAI8010.xml   | TC_AI8010_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8010 | TC AI8010 04 Valid: 30 characters | ABC123456789876543212345678987 | .\Labels\BarcodeAI8010.xml   | TC_AI8010_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8011 | TC AI8011 01 Invalid: More than 12 digits | 2111267890123 | .\Labels\BarcodeAI8011.xml   | TC_AI8011_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8011 | TC AI8011 02 Valid: Empty |  | .\Labels\BarcodeAI8011.xml   | TC_AI8011_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8011 | TC AI8011 03 Valid: Less than 12 digits | 21112678901 | .\Labels\BarcodeAI8011.xml   | TC_AI8011_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8011 | TC AI8011 04 Valid: 12 digits | 211126789012 | .\Labels\BarcodeAI8011.xml   | TC_AI8011_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8011 | TC AI8011 05 Invalid: Not number | 444e56789012 | .\Labels\BarcodeAI8011.xml   | TC_AI8011_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8012 | TC AI8012 01 Invalid: More than 20 characters | ABC1234567 8987654321 | .\Labels\BarcodeAI8012.xml   | TC_AI8012_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8012 | TC AI8012 02 Valid: Empty |  | .\Labels\BarcodeAI8012.xml   | TC_AI8012_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8012 | TC AI8012 03 Valid: Less than 20 characters | ABC1234567 89874321 | .\Labels\BarcodeAI8012.xml   | TC_AI8012_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8012 | TC AI8012 04 Valid: 20 characters | ABC123456 8987654321 | .\Labels\BarcodeAI8012.xml   | TC_AI8012_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8013 | TC AI8013 01 Invalid: More than 30 characters | ABC1234567898765432123456789876 | .\Labels\BarcodeAI8013.xml   | TC_AI8013_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8013 | TC AI8013 02 Valid: Empty |  | .\Labels\BarcodeAI8013.xml   | TC_AI8013_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8013 | TC AI8013 03 Valid: Less than 30 characters | ABC12345678987654321234567898 | .\Labels\BarcodeAI8013.xml   | TC_AI8013_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8013 | TC AI8013 04 Valid: 30 characters | ABC123456789876543212345678987 | .\Labels\BarcodeAI8013.xml   | TC_AI8013_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8017 | TC AI8017 01 Invalid: More than 18 digits | 1234567890123456789 | .\Labels\BarcodeAI8017.xml   | TC_AI8017_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8017 | TC AI8017 02 Invalid: Empty |  | .\Labels\BarcodeAI8017.xml   | TC_AI8017_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8017 | TC AI8017 03 Invalid: Less than 18 digits | 12345678901234567 | .\Labels\BarcodeAI8017.xml   | TC_AI8017_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8017 | TC AI8017 04 Valid: 18 digits | 123456789012345679 | .\Labels\BarcodeAI8017.xml   | TC_AI8017_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8017 | TC AI8017 05 Invalid: Not number | hello1789012345678 | .\Labels\BarcodeAI8017.xml   | TC_AI8017_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8018 | TC AI8018 01 Invalid: More than 18 digits | 1234567890123456789 | .\Labels\BarcodeAI8018.xml   | TC_AI8018_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8018 | TC AI8018 02 Invalid: Empty |  | .\Labels\BarcodeAI8018.xml   | TC_AI8018_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8018 | TC AI8018 03 Invalid: Less than 18 digits | 12345678901234567 | .\Labels\BarcodeAI8018.xml   | TC_AI8018_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8018 | TC AI8018 04 Valid: 18 digits | 123456789012345679 | .\Labels\BarcodeAI8018.xml   | TC_AI8018_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8018 | TC AI8018 05 Invalid: Not number | hello1789012345678 | .\Labels\BarcodeAI8018.xml   | TC_AI8018_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8019 | TC AI8019 01 Invalid: More than 10 digits | 21112678901 | .\Labels\BarcodeAI8019.xml   | TC_AI8019_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8019 | TC AI8019 02 Valid: Empty |  | .\Labels\BarcodeAI8019.xml   | TC_AI8019_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8019 | TC AI8019 03 Valid: Less than 10 digits | 211126789 | .\Labels\BarcodeAI8019.xml   | TC_AI8019_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8019 | TC AI8019 04 Valid: 10 digits | 2111267890 | .\Labels\BarcodeAI8019.xml   | TC_AI8019_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8019 | TC AI8019 05 Invalid: Not number | 444e567890 | .\Labels\BarcodeAI8019.xml   | TC_AI8019_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8020 | TC AI8020 01 Invalid: More than 25 characters | ABC12345678987654321234567 | .\Labels\BarcodeAI8020.xml   | TC_AI8020_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8020 | TC AI8020 02 Valid: Empty |  | .\Labels\BarcodeAI8020.xml   | TC_AI8020_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8020 | TC AI8020 03 Valid: Less than 25 characters | ABC123456789876543212345 | .\Labels\BarcodeAI8020.xml   | TC_AI8020_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8020 | TC AI8020 04 Valid: 25 characters | ABC1234567898765432123456 | .\Labels\BarcodeAI8020.xml   | TC_AI8020_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8026 | TC AI8026 01 Invalid: More than 18 digits | 1234567898765430000 | .\Labels\BarcodeAI8026.xml   | TC_AI8026_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8026 | TC AI8026 02 Invalid: Empty |  | .\Labels\BarcodeAI8026.xml   | TC_AI8026_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8026 | TC AI8026 03 Invalid: Less than 18 digits | 12345678987654321 | .\Labels\BarcodeAI8026.xml   | TC_AI8026_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8026 | TC AI8026 04 Valid: 18 digits | 123456789876543212 | .\Labels\BarcodeAI8026.xml   | TC_AI8026_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8026 | TC AI8026 05 Invalid: Not number | hello world duong! | .\Labels\BarcodeAI8026.xml   | TC_AI8026_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8110 | TC AI8110 01 Invalid: More than 70 characters | ABC12345678987654321ABC12345678987654321ABC1234567898765432123456789876 | .\Labels\BarcodeAI8110.xml   | TC_AI8110_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8110 | TC AI8110 02 Valid: Empty |  | .\Labels\BarcodeAI8110.xml   | TC_AI8110_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8110 | TC AI8110 03 Valid: Less than 70 characters | ABC123456789876543212345678987 | .\Labels\BarcodeAI8110.xml   | TC_AI8110_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8110 | TC AI8110 04 Valid: 70 characters | ABC1234567898765 321ABC1234567898 654321ABC123456789876543212345678987 | .\Labels\BarcodeAI8110.xml   | TC_AI8110_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8111 | TC AI8111 01 Invalid: More than 4 digits | 12345 | .\Labels\BarcodeAI8111.xml   | TC_AI8111_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8111 | TC AI8111 02 Invalid: Empty |  | .\Labels\BarcodeAI8111.xml   | TC_AI8111_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8111 | TC AI8111 03 Invalid: Less than 4 digits | 123 | .\Labels\BarcodeAI8111.xml   | TC_AI8111_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8111 | TC AI8111 04 Valid: 4 digits | 1234 | .\Labels\BarcodeAI8111.xml   | TC_AI8111_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8111 | TC AI8111 05 Invalid: Not number | hell | .\Labels\BarcodeAI8111.xml   | TC_AI8111_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8112 | TC AI8112 01 Invalid: More than 70 characters | ABC12345678987654321ABC12345678987654321ABC1234567898765432123456789876 | .\Labels\BarcodeAI8112.xml   | TC_AI8112_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8112 | TC AI8112 02 Valid: Empty |  | .\Labels\BarcodeAI8112.xml   | TC_AI8112_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8112 | TC AI8112 03 Valid: Less than 70 characters | ABC123456789876543212345678987 | .\Labels\BarcodeAI8112.xml   | TC_AI8112_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8112 | TC AI8112 04 Valid: 70 characters | ABC1234567898765 321ABC1234567898 654321ABC123456789876543212345678987 | .\Labels\BarcodeAI8112.xml   | TC_AI8112_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8200 | TC AI8200 01 Invalid: More than 70 characters | ABC12345678987654321ABC12345678987654321ABC1234567898765432123456789876 | .\Labels\BarcodeAI8200.xml   | TC_AI8200_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8200 | TC AI8200 02 Valid: Empty |  | .\Labels\BarcodeAI8200.xml   | TC_AI8200_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8200 | TC AI8200 03 Valid: Less than 70 characters | ABC123456789876543212345678987 | .\Labels\BarcodeAI8200.xml   | TC_AI8200_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 8200 | TC AI8200 04 Valid: 70 characters | ABC1234567898765 321ABC1234567898 654321ABC123456789876543212345678987 | .\Labels\BarcodeAI8200.xml   | TC_AI8200_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 90 | TC AI90 01 Invalid: More than 30 characters | 1234567898765432123456789876543 | .\Labels\BarcodeAI90.xml   | TC_AI90_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 90 | TC AI90 02 Valid: Empty |  | .\Labels\BarcodeAI90.xml   | TC_AI90_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 90 | TC AI90 03 Valid: Less than 30 characters | e2345678987654321234567898765 | .\Labels\BarcodeAI90.xml   | TC_AI90_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 90 | TC AI90 04 Valid: 30 characters | 12345678987654321234567898765# | .\Labels\BarcodeAI90.xml   | TC_AI90_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 91 | TC AI91 01 Invalid: More than 90 characters | 1adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI91.xml   | TC_AI91_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 91 | TC AI91 02 Valid: Empty |  | .\Labels\BarcodeAI91.xml   | TC_AI91_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 91 | TC AI91 03 Valid: Less than 90 characters | dgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI91.xml   | TC_AI91_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 91 | TC AI91 04 Valid: 90 characters | adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI91.xml   | TC_AI91_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 92 | TC AI92 01 Invalid: More than 90 characters | 1adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI92.xml   | TC_AI92_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 92 | TC AI92 02 Valid: Empty |  | .\Labels\BarcodeAI92.xml   | TC_AI92_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 92 | TC AI92 03 Valid: Less than 90 characters | dgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI92.xml   | TC_AI92_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 92 | TC AI92 04 Valid: 90 characters | adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI92.xml   | TC_AI92_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 93 | TC AI93 01 Invalid: More than 90 characters | 1adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI93.xml   | TC_AI93_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 93 | TC AI93 02 Valid: Empty |  | .\Labels\BarcodeAI93.xml   | TC_AI93_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 93 | TC AI93 03 Valid: Less than 90 characters | dgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI93.xml   | TC_AI93_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 93 | TC AI93 04 Valid: 90 characters | adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI93.xml   | TC_AI93_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 94 | TC AI94 01 Invalid: More than 90 characters | 1adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI94.xml   | TC_AI94_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 94 | TC AI94 02 Valid: Empty |  | .\Labels\BarcodeAI94.xml   | TC_AI94_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 94 | TC AI94 03 Valid: Less than 90 characters | dgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI94.xml   | TC_AI94_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 94 | TC AI94 04 Valid: 90 characters | adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI94.xml   | TC_AI94_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 95 | TC AI95 01 Invalid: More than 90 characters | 1adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI95.xml   | TC_AI95_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 95 | TC AI95 02 Valid: Empty |  | .\Labels\BarcodeAI95.xml   | TC_AI95_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 95 | TC AI95 03 Valid: Less than 90 characters | dgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI95.xml   | TC_AI95_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 95 | TC AI95 04 Valid: 90 characters | adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI95.xml   | TC_AI95_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 96 | TC AI96 01 Invalid: More than 90 characters | 1adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI96.xml   | TC_AI96_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 96 | TC AI96 02 Valid: Empty |  | .\Labels\BarcodeAI96.xml   | TC_AI96_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 96 | TC AI96 03 Valid: Less than 90 characters | dgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI96.xml   | TC_AI96_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 96 | TC AI96 04 Valid: 90 characters | adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI96.xml   | TC_AI96_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 97 | TC AI97 01 Invalid: More than 90 characters | 1adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI97.xml   | TC_AI97_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 97 | TC AI97 02 Valid: Empty |  | .\Labels\BarcodeAI97.xml   | TC_AI97_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 97 | TC AI97 03 Valid: Less than 90 characters | dgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI97.xml   | TC_AI97_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 97 | TC AI97 04 Valid: 90 characters | adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI97.xml   | TC_AI97_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 98 | TC AI98 01 Invalid: More than 90 characters | 1adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI98.xml   | TC_AI98_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 98 | TC AI98 02 Valid: Empty |  | .\Labels\BarcodeAI98.xml   | TC_AI98_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 98 | TC AI98 03 Valid: Less than 90 characters | dgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI98.xml   | TC_AI98_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 98 | TC AI98 04 Valid: 90 characters | adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI98.xml   | TC_AI98_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 99 | TC AI99 01 Invalid: More than 90 characters | 1adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI99.xml   | TC_AI99_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 99 | TC AI99 02 Valid: Empty |  | .\Labels\BarcodeAI99.xml   | TC_AI99_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 99 | TC AI99 03 Valid: Less than 90 characters | dgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI99.xml   | TC_AI99_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
    | Sato | 99 | TC AI99 04 Valid: 90 characters | adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI99.xml   | TC_AI99_04.txt | G0L1EPrinter.SATO_Printerdata.txt |

