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
#      | Sato | 710 | TC AI710 01 Invalid: More than 20 characters | 01234567898765432101E | .\Labels\BarcodeAI710.xml   | TC_AI710_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 710 | TC AI710 02 Valid: Empty |  | .\Labels\BarcodeAI710.xml   | TC_AI710_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 710 | TC AI710 03 Valid: Less than 20 characters | 0123456789876543Ed | .\Labels\BarcodeAI710.xml   | TC_AI710_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 710 | TC AI710 04 Valid: 20 characters | 0123456789876543210e | .\Labels\BarcodeAI710.xml   | TC_AI710_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 711 | TC AI711 01 Invalid: More than 20 characters | 01234567898765432101E | .\Labels\BarcodeAI711.xml   | TC_AI711_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 711 | TC AI711 02 Valid: Empty |  | .\Labels\BarcodeAI711.xml   | TC_AI711_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 711 | TC AI711 03 Valid: Less than 20 characters | 0123456789876543Ed | .\Labels\BarcodeAI711.xml   | TC_AI711_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 711 | TC AI711 04 Valid: 20 characters | 0123456789876543210e | .\Labels\BarcodeAI711.xml   | TC_AI711_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 712 | TC AI712 01 Invalid: More than 20 characters | 01234567898765432101E | .\Labels\BarcodeAI712.xml   | TC_AI712_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 712 | TC AI712 02 Valid: Empty |  | .\Labels\BarcodeAI712.xml   | TC_AI712_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 712 | TC AI712 03 Valid: Less than 20 characters | 0123456789876543Ed | .\Labels\BarcodeAI712.xml   | TC_AI712_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 712 | TC AI712 04 Valid: 20 characters | 0123456789876543210e | .\Labels\BarcodeAI712.xml   | TC_AI712_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 713 | TC AI713 01 Invalid: More than 20 characters | 01234567898765432101E | .\Labels\BarcodeAI713.xml   | TC_AI713_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 713 | TC AI713 02 Valid: Empty |  | .\Labels\BarcodeAI713.xml   | TC_AI713_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 713 | TC AI713 03 Valid: Less than 20 characters | 0123456789876543Ed | .\Labels\BarcodeAI713.xml   | TC_AI713_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 713 | TC AI713 04 Valid: 20 characters | 0123456789876543210e | .\Labels\BarcodeAI713.xml   | TC_AI713_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 714 | TC AI714 01 Invalid: More than 20 characters | 01234567898765432101E | .\Labels\BarcodeAI714.xml   | TC_AI714_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 714 | TC AI714 02 Valid: Empty |  | .\Labels\BarcodeAI714.xml   | TC_AI714_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 714 | TC AI714 03 Valid: Less than 20 characters | 0123456789876543Ed | .\Labels\BarcodeAI714.xml   | TC_AI714_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 714 | TC AI714 04 Valid: 20 characters | 0123456789876543210e | .\Labels\BarcodeAI714.xml   | TC_AI714_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7230 | TC AI7230 01 Invalid: less than 2 characters | $ | .\Labels\BarcodeAI7230.xml   | TC_AI7230_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7230 | TC AI7230 02 Invalid: Empty |  | .\Labels\BarcodeAI7230.xml   | TC_AI7230_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7230 | TC AI7230 03 Invalid: More than 30 characters | 1110123456d78987654321234567898 | .\Labels\BarcodeAI7230.xml   | TC_AI7230_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7230 | TC AI7230 04 Valid: 2 characters | 01 | .\Labels\BarcodeAI7230.xml   | TC_AI7230_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7230 | TC AI7230 05 Valid: 30 characters | 1110123456d7898765432123456789 | .\Labels\BarcodeAI7230.xml   | TC_AI7230_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7230 | TC AI7230 06 Valid: count(number)>2 and count(number)<30 | 1110123456d789876543212345678 | .\Labels\BarcodeAI7230.xml   | TC_AI7230_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7231 | TC AI7231 01 Invalid: less than 2 characters | $ | .\Labels\BarcodeAI7231.xml   | TC_AI7231_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7231 | TC AI7231 02 Invalid: Empty |  | .\Labels\BarcodeAI7231.xml   | TC_AI7231_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7231 | TC AI7231 03 Invalid: More than 30 characters | 1110123456d78987654321234567898 | .\Labels\BarcodeAI7231.xml   | TC_AI7231_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7231 | TC AI7231 04 Valid: 2 characters | 01 | .\Labels\BarcodeAI7231.xml   | TC_AI7231_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7231 | TC AI7231 05 Valid: 30 characters | 1110123456d7898765432123456789 | .\Labels\BarcodeAI7231.xml   | TC_AI7231_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7231 | TC AI7231 06 Valid: count(number)>2 and count(number)<30 | 1110123456d789876543212345678 | .\Labels\BarcodeAI7231.xml   | TC_AI7231_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7232 | TC AI7232 01 Invalid: less than 2 characters | $ | .\Labels\BarcodeAI7232.xml   | TC_AI7232_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7232 | TC AI7232 02 Invalid: Empty |  | .\Labels\BarcodeAI7232.xml   | TC_AI7232_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7232 | TC AI7232 03 Invalid: More than 30 characters | 1110123456d78987654321234567898 | .\Labels\BarcodeAI7232.xml   | TC_AI7232_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7232 | TC AI7232 04 Valid: 2 characters | 01 | .\Labels\BarcodeAI7232.xml   | TC_AI7232_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7232 | TC AI7232 05 Valid: 30 characters | 1110123456d7898765432123456789 | .\Labels\BarcodeAI7232.xml   | TC_AI7232_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 7232 | TC AI7232 06 Valid: count(number)>2 and count(number)<30 | 1110123456d789876543212345678 | .\Labels\BarcodeAI7232.xml   | TC_AI7232_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7233 | TC AI7233 01 Invalid: less than 2 characters | $ | .\Labels\BarcodeAI7233.xml   | TC_AI7233_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7233 | TC AI7233 02 Invalid: Empty |  | .\Labels\BarcodeAI7233.xml   | TC_AI7233_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7233 | TC AI7233 03 Invalid: More than 30 characters | 1110123456d78987654321234567898 | .\Labels\BarcodeAI7233.xml   | TC_AI7233_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7233 | TC AI7233 04 Valid: 2 characters | 01 | .\Labels\BarcodeAI7233.xml   | TC_AI7233_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7233 | TC AI7233 05 Valid: 30 characters | 1110123456d7898765432123456789 | .\Labels\BarcodeAI7233.xml   | TC_AI7233_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7233 | TC AI7233 06 Valid: count(number)>2 and count(number)<30 | 1110123456d789876543212345678 | .\Labels\BarcodeAI7233.xml   | TC_AI7233_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7234 | TC AI7234 01 Invalid: less than 2 characters | $ | .\Labels\BarcodeAI7234.xml   | TC_AI7234_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7234 | TC AI7234 02 Invalid: Empty |  | .\Labels\BarcodeAI7234.xml   | TC_AI7234_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7234 | TC AI7234 03 Invalid: More than 30 characters | 1110123456d78987654321234567898 | .\Labels\BarcodeAI7234.xml   | TC_AI7234_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7234 | TC AI7234 04 Valid: 2 characters | 01 | .\Labels\BarcodeAI7234.xml   | TC_AI7234_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7234 | TC AI7234 05 Valid: 30 characters | 1110123456d7898765432123456789 | .\Labels\BarcodeAI7234.xml   | TC_AI7234_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7234 | TC AI7234 06 Valid: count(number)>2 and count(number)<30 | 1110123456d789876543212345678 | .\Labels\BarcodeAI7234.xml   | TC_AI7234_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7235 | TC AI7235 01 Invalid: less than 2 characters | $ | .\Labels\BarcodeAI7235.xml   | TC_AI7235_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7235 | TC AI7235 02 Invalid: Empty |  | .\Labels\BarcodeAI7235.xml   | TC_AI7235_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7235 | TC AI7235 03 Invalid: More than 30 characters | 1110123456d78987654321234567898 | .\Labels\BarcodeAI7235.xml   | TC_AI7235_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7235 | TC AI7235 04 Valid: 2 characters | 01 | .\Labels\BarcodeAI7235.xml   | TC_AI7235_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7235 | TC AI7235 05 Valid: 30 characters | 1110123456d7898765432123456789 | .\Labels\BarcodeAI7235.xml   | TC_AI7235_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7235 | TC AI7235 06 Valid: count(number)>2 and count(number)<30 | 1110123456d789876543212345678 | .\Labels\BarcodeAI7235.xml   | TC_AI7235_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7236 | TC AI7236 01 Invalid: less than 2 characters | $ | .\Labels\BarcodeAI7236.xml   | TC_AI7236_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7236 | TC AI7236 02 Invalid: Empty |  | .\Labels\BarcodeAI7236.xml   | TC_AI7236_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7236 | TC AI7236 03 Invalid: More than 30 characters | 1110123456d78987654321234567898 | .\Labels\BarcodeAI7236.xml   | TC_AI7236_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7236 | TC AI7236 04 Valid: 2 characters | 01 | .\Labels\BarcodeAI7236.xml   | TC_AI7236_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7236 | TC AI7236 05 Valid: 30 characters | 1110123456d7898765432123456789 | .\Labels\BarcodeAI7236.xml   | TC_AI7236_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7236 | TC AI7236 06 Valid: count(number)>2 and count(number)<30 | 1110123456d789876543212345678 | .\Labels\BarcodeAI7236.xml   | TC_AI7236_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7237 | TC AI7237 01 Invalid: less than 2 characters | $ | .\Labels\BarcodeAI7237.xml   | TC_AI7237_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7237 | TC AI7237 02 Invalid: Empty |  | .\Labels\BarcodeAI7237.xml   | TC_AI7237_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7237 | TC AI7237 03 Invalid: More than 30 characters | 1110123456d78987654321234567898 | .\Labels\BarcodeAI7237.xml   | TC_AI7237_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7237 | TC AI7237 04 Valid: 2 characters | 01 | .\Labels\BarcodeAI7237.xml   | TC_AI7237_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7237 | TC AI7237 05 Valid: 30 characters | 1110123456d7898765432123456789 | .\Labels\BarcodeAI7237.xml   | TC_AI7237_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7237 | TC AI7237 06 Valid: count(number)>2 and count(number)<30 | 1110123456d789876543212345678 | .\Labels\BarcodeAI7237.xml   | TC_AI7237_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7238 | TC AI7238 01 Invalid: less than 2 characters | $ | .\Labels\BarcodeAI7238.xml   | TC_AI7238_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7238 | TC AI7238 02 Invalid: Empty |  | .\Labels\BarcodeAI7238.xml   | TC_AI7238_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7238 | TC AI7238 03 Invalid: More than 30 characters | 1110123456d78987654321234567898 | .\Labels\BarcodeAI7238.xml   | TC_AI7238_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7238 | TC AI7238 04 Valid: 2 characters | 01 | .\Labels\BarcodeAI7238.xml   | TC_AI7238_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7238 | TC AI7238 05 Valid: 30 characters | 1110123456d7898765432123456789 | .\Labels\BarcodeAI7238.xml   | TC_AI7238_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7238 | TC AI7238 06 Valid: count(number)>2 and count(number)<30 | 1110123456d789876543212345678 | .\Labels\BarcodeAI7238.xml   | TC_AI7238_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7239 | TC AI7239 01 Invalid: less than 2 characters | $ | .\Labels\BarcodeAI7239.xml   | TC_AI7239_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7239 | TC AI7239 02 Invalid: Empty |  | .\Labels\BarcodeAI7239.xml   | TC_AI7239_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7239 | TC AI7239 03 Invalid: More than 30 characters | 1110123456d78987654321234567898 | .\Labels\BarcodeAI7239.xml   | TC_AI7239_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7239 | TC AI7239 04 Valid: 2 characters | 01 | .\Labels\BarcodeAI7239.xml   | TC_AI7239_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7239 | TC AI7239 05 Valid: 30 characters | 1110123456d7898765432123456789 | .\Labels\BarcodeAI7239.xml   | TC_AI7239_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 7239 | TC AI7239 06 Valid: count(number)>2 and count(number)<30 | 1110123456d789876543212345678 | .\Labels\BarcodeAI7239.xml   | TC_AI7239_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8001 | TC AI8001 01 Invalid: More than 14 digits | 123456789123456 | .\Labels\BarcodeAI8001.xml   | TC_AI8001_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8001 | TC AI8001 02 Invalid: Empty |  | .\Labels\BarcodeAI8001.xml   | TC_AI8001_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8001 | TC AI8001 03 Invalid: Less than 14 digits | 1234567891232 | .\Labels\BarcodeAI8001.xml   | TC_AI8001_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8001 | TC AI8001 04 Valid: 14 digits | 12345678912341 | .\Labels\BarcodeAI8001.xml   | TC_AI8001_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8001 | TC AI8001 05 Invalid: Not number | 123456789123E1 | .\Labels\BarcodeAI8001.xml   | TC_AI8001_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8002 | TC AI8002 01 Invalid: More than 20 characters | 01234567898765432101E | .\Labels\BarcodeAI8002.xml   | TC_AI8002_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8002 | TC AI8002 02 Valid: Empty |  | .\Labels\BarcodeAI8002.xml   | TC_AI8002_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8002 | TC AI8002 03 Valid: Less than 20 characters | 0123456789876543Ed | .\Labels\BarcodeAI8002.xml   | TC_AI8002_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8002 | TC AI8002 04 Valid: 20 characters | 0123456789876543210e | .\Labels\BarcodeAI8002.xml   | TC_AI8002_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8003 | TC AI8003 01 Invalid: less than 14 digits | 1234567890123 | .\Labels\BarcodeAI8003.xml   | TC_AI8003_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8003 | TC AI8003 02 Invalid: Empty |  | .\Labels\BarcodeAI8003.xml   | TC_AI8003_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8003 | TC AI8003 03 Invalid: 14 prefix is not number | 1234567890123E | .\Labels\BarcodeAI8003.xml   | TC_AI8003_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8003 | TC AI8003 04 Invalid: More than 30 characters | 1110123456d78987654321234567898 | .\Labels\BarcodeAI8003.xml   | TC_AI8003_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8003 | TC AI8003 05 Valid: 14 digits | 01234567891234 | .\Labels\BarcodeAI8003.xml   | TC_AI8003_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8003 | TC AI8003 06 Valid: 30 characters | 1110123456d7898765432123456789 | .\Labels\BarcodeAI8003.xml   | TC_AI8003_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8003 | TC AI8003 07 Valid: count(number)>14 and count(number)<30 | 1110123456d789876543212345678 | .\Labels\BarcodeAI8003.xml   | TC_AI8003_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8004 | TC AI8004 01 Invalid: More than 30 characters | 01234567898765432101Easdfghjklo | .\Labels\BarcodeAI8004.xml   | TC_AI8004_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8004 | TC AI8004 02 Valid: Empty |  | .\Labels\BarcodeAI8004.xml   | TC_AI8004_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8004 | TC AI8004 03 Valid: Less than 30 characters | 01234567898765432101Easdfghjk | .\Labels\BarcodeAI8004.xml   | TC_AI8004_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8004 | TC AI8004 04 Valid: 30 characters | 01234567898765432101 Easdfghjk | .\Labels\BarcodeAI8004.xml   | TC_AI8004_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8005 | TC AI8005 01 Invalid: More than 6 digits | 1234567 | .\Labels\BarcodeAI8005.xml   | TC_AI8005_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8005 | TC AI8005 02 Invalid: Empty |  | .\Labels\BarcodeAI8005.xml   | TC_AI8005_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8005 | TC AI8005 03 Invalid: Less than 6 digits | 12345 | .\Labels\BarcodeAI8005.xml   | TC_AI8005_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8005 | TC AI8005 04 Valid: 6 digits | 123456 | .\Labels\BarcodeAI8005.xml   | TC_AI8005_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8005 | TC AI8005 05 Invalid: Not number | hello1 | .\Labels\BarcodeAI8005.xml   | TC_AI8005_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8006 | TC AI8006 01 Invalid: More than 18 digits | 1234567898765430000 | .\Labels\BarcodeAI8006.xml   | TC_AI8006_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8006 | TC AI8006 02 Invalid: Empty |  | .\Labels\BarcodeAI8006.xml   | TC_AI8006_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8006 | TC AI8006 03 Invalid: Less than 18 digits | 12345678987654321 | .\Labels\BarcodeAI8006.xml   | TC_AI8006_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8006 | TC AI8006 04 Valid: 18 digits | 123456789876543212 | .\Labels\BarcodeAI8006.xml   | TC_AI8006_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8006 | TC AI8006 05 Invalid: Not number | hello world duong! | .\Labels\BarcodeAI8006.xml   | TC_AI8006_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8007 | TC AI8007 01 Invalid: More than 34 characters | 01234567898765432101Easdfghjklo 123 | .\Labels\BarcodeAI8007.xml   | TC_AI8007_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8007 | TC AI8007 02 Valid: Empty |  | .\Labels\BarcodeAI8007.xml   | TC_AI8007_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8007 | TC AI8007 03 Valid: Less than 34 characters | 01234567898765432101Easdfghjk 123 | .\Labels\BarcodeAI8007.xml   | TC_AI8007_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8007 | TC AI8007 04 Valid: 34 characters | 01234567898765432101 Easdfghjk 123 | .\Labels\BarcodeAI8007.xml   | TC_AI8007_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8008 | TC AI8008 01 Invalid: Empty |  | .\Labels\BarcodeAI8008.xml   | AC_AI8008_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8008 | TC AI8008 02 Invalid: Less than 8 digits | 1234567 | .\Labels\BarcodeAI8008.xml   | AC_AI8008_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8008 | TC AI8008 03 Invalid: More than 12 digits | 9874561230121 | .\Labels\BarcodeAI8008.xml   | AC_AI8008_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8008 | TC AI8008 04 Invalid: Characters included in prefix | Helo98745612 | .\Labels\BarcodeAI8008.xml   | AC_AI8008_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8008 | TC AI8008 05 Valid: 8 digits | 01234567 | .\Labels\BarcodeAI8008.xml   | AC_AI8008_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8008 | TC AI8008 06 Valid: 12 digits | 123456789011 | .\Labels\BarcodeAI8008.xml   | AC_AI8008_06.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8008 | TC AI8008 07 Valid: count (number) > 8 and count (number) < 12 | 12345678987 | .\Labels\BarcodeAI8008.xml   | AC_AI8008_07.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8008 | TC AI8008 08 Invalid: Characters included in suffix | 1234567898h# | .\Labels\BarcodeAI8008.xml   | AC_AI8008_08.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8009 | TC AI8009 01 Invalid: More than 50 characters | ABC123456789876543212345678987654321234567898765432 | .\Labels\BarcodeAI8009.xml   | TC_AI8009_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8009 | TC AI8009 02 Valid: Empty |  | .\Labels\BarcodeAI8009.xml   | TC_AI8009_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8009 | TC AI8009 03 Valid: Less than 50 characters | 01234567898765432101Easdfghjk 123 | .\Labels\BarcodeAI8009.xml   | TC_AI8009_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8009 | TC AI8009 04 Valid: 50 characters | ABC12345678 9876543212345 678987654 32123456 hello | .\Labels\BarcodeAI8009.xml   | TC_AI8009_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8010 | TC AI8010 01 Invalid: More than 30 characters | ABC1234567898765432123456789876 | .\Labels\BarcodeAI8010.xml   | TC_AI8010_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8010 | TC AI8010 02 Valid: Empty |  | .\Labels\BarcodeAI8010.xml   | TC_AI8010_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8010 | TC AI8010 03 Valid: Less than 30 characters | ABC12345678987654321234567898 | .\Labels\BarcodeAI8010.xml   | TC_AI8010_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8010 | TC AI8010 04 Valid: 30 characters | ABC123456789876543212345678987 | .\Labels\BarcodeAI8010.xml   | TC_AI8010_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8011 | TC AI8011 01 Invalid: More than 12 digits | 2111267890123 | .\Labels\BarcodeAI8011.xml   | TC_AI8011_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8011 | TC AI8011 02 Valid: Empty |  | .\Labels\BarcodeAI8011.xml   | TC_AI8011_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8011 | TC AI8011 03 Valid: Less than 12 digits | 21112678901 | .\Labels\BarcodeAI8011.xml   | TC_AI8011_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8011 | TC AI8011 04 Valid: 12 digits | 211126789012 | .\Labels\BarcodeAI8011.xml   | TC_AI8011_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8011 | TC AI8011 05 Invalid: Not number | 444e56789012 | .\Labels\BarcodeAI8011.xml   | TC_AI8011_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8012 | TC AI8012 01 Invalid: More than 20 characters | ABC1234567 8987654321 | .\Labels\BarcodeAI8012.xml   | TC_AI8012_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8012 | TC AI8012 02 Valid: Empty |  | .\Labels\BarcodeAI8012.xml   | TC_AI8012_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8012 | TC AI8012 03 Valid: Less than 20 characters | ABC1234567 89874321 | .\Labels\BarcodeAI8012.xml   | TC_AI8012_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8012 | TC AI8012 04 Valid: 20 characters | ABC123456 8987654321 | .\Labels\BarcodeAI8012.xml   | TC_AI8012_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8013 | TC AI8013 01 Invalid: More than 30 characters | ABC1234567898765432123456789876 | .\Labels\BarcodeAI8013.xml   | TC_AI8013_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8013 | TC AI8013 02 Valid: Empty |  | .\Labels\BarcodeAI8013.xml   | TC_AI8013_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8013 | TC AI8013 03 Valid: Less than 30 characters | ABC12345678987654321234567898 | .\Labels\BarcodeAI8013.xml   | TC_AI8013_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8013 | TC AI8013 04 Valid: 30 characters | ABC123456789876543212345678987 | .\Labels\BarcodeAI8013.xml   | TC_AI8013_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8017 | TC AI8017 01 Invalid: More than 18 digits | 1234567890123456789 | .\Labels\BarcodeAI8017.xml   | TC_AI8017_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8017 | TC AI8017 02 Invalid: Empty |  | .\Labels\BarcodeAI8017.xml   | TC_AI8017_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8017 | TC AI8017 03 Invalid: Less than 18 digits | 12345678901234567 | .\Labels\BarcodeAI8017.xml   | TC_AI8017_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8017 | TC AI8017 04 Valid: 18 digits | 123456789012345679 | .\Labels\BarcodeAI8017.xml   | TC_AI8017_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8017 | TC AI8017 05 Invalid: Not number | hello1789012345678 | .\Labels\BarcodeAI8017.xml   | TC_AI8017_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8018 | TC AI8018 01 Invalid: More than 18 digits | 1234567890123456789 | .\Labels\BarcodeAI8018.xml   | TC_AI8018_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8018 | TC AI8018 02 Invalid: Empty |  | .\Labels\BarcodeAI8018.xml   | TC_AI8018_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8018 | TC AI8018 03 Invalid: Less than 18 digits | 12345678901234567 | .\Labels\BarcodeAI8018.xml   | TC_AI8018_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8018 | TC AI8018 04 Valid: 18 digits | 123456789012345679 | .\Labels\BarcodeAI8018.xml   | TC_AI8018_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8018 | TC AI8018 05 Invalid: Not number | hello1789012345678 | .\Labels\BarcodeAI8018.xml   | TC_AI8018_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8019 | TC AI8019 01 Invalid: More than 10 digits | 21112678901 | .\Labels\BarcodeAI8019.xml   | TC_AI8019_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8019 | TC AI8019 02 Valid: Empty |  | .\Labels\BarcodeAI8019.xml   | TC_AI8019_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8019 | TC AI8019 03 Valid: Less than 10 digits | 211126789 | .\Labels\BarcodeAI8019.xml   | TC_AI8019_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8019 | TC AI8019 04 Valid: 10 digits | 2111267890 | .\Labels\BarcodeAI8019.xml   | TC_AI8019_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8019 | TC AI8019 05 Invalid: Not number | 444e567890 | .\Labels\BarcodeAI8019.xml   | TC_AI8019_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8020 | TC AI8020 01 Invalid: More than 25 characters | ABC12345678987654321234567 | .\Labels\BarcodeAI8020.xml   | TC_AI8020_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8020 | TC AI8020 02 Valid: Empty |  | .\Labels\BarcodeAI8020.xml   | TC_AI8020_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8020 | TC AI8020 03 Valid: Less than 25 characters | ABC123456789876543212345 | .\Labels\BarcodeAI8020.xml   | TC_AI8020_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8020 | TC AI8020 04 Valid: 25 characters | ABC1234567898765432123456 | .\Labels\BarcodeAI8020.xml   | TC_AI8020_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8026 | TC AI8026 01 Invalid: More than 18 digits | 1234567898765430000 | .\Labels\BarcodeAI8026.xml   | TC_AI8026_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8026 | TC AI8026 02 Invalid: Empty |  | .\Labels\BarcodeAI8026.xml   | TC_AI8026_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 8026 | TC AI8026 03 Invalid: Less than 18 digits | 12345678987654321 | .\Labels\BarcodeAI8026.xml   | TC_AI8026_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8026 | TC AI8026 04 Valid: 18 digits | 123456789876543212 | .\Labels\BarcodeAI8026.xml   | TC_AI8026_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8026 | TC AI8026 05 Invalid: Not number | hello world duong! | .\Labels\BarcodeAI8026.xml   | TC_AI8026_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8110 | TC AI8110 01 Invalid: More than 70 characters | ABC12345678987654321ABC12345678987654321ABC1234567898765432123456789876 | .\Labels\BarcodeAI8110.xml   | TC_AI8110_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8110 | TC AI8110 02 Valid: Empty |  | .\Labels\BarcodeAI8110.xml   | TC_AI8110_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8110 | TC AI8110 03 Valid: Less than 70 characters | ABC123456789876543212345678987 | .\Labels\BarcodeAI8110.xml   | TC_AI8110_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8110 | TC AI8110 04 Valid: 70 characters | ABC1234567898765 321ABC1234567898 654321ABC123456789876543212345678987 | .\Labels\BarcodeAI8110.xml   | TC_AI8110_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8111 | TC AI8111 01 Invalid: More than 4 digits | 12345 | .\Labels\BarcodeAI8111.xml   | TC_AI8111_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8111 | TC AI8111 02 Invalid: Empty |  | .\Labels\BarcodeAI8111.xml   | TC_AI8111_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8111 | TC AI8111 03 Invalid: Less than 4 digits | 123 | .\Labels\BarcodeAI8111.xml   | TC_AI8111_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8111 | TC AI8111 04 Valid: 4 digits | 1234 | .\Labels\BarcodeAI8111.xml   | TC_AI8111_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8111 | TC AI8111 05 Invalid: Not number | hell | .\Labels\BarcodeAI8111.xml   | TC_AI8111_05.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8112 | TC AI8112 01 Invalid: More than 70 characters | ABC12345678987654321ABC12345678987654321ABC1234567898765432123456789876 | .\Labels\BarcodeAI8112.xml   | TC_AI8112_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8112 | TC AI8112 02 Valid: Empty |  | .\Labels\BarcodeAI8112.xml   | TC_AI8112_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8112 | TC AI8112 03 Valid: Less than 70 characters | ABC123456789876543212345678987 | .\Labels\BarcodeAI8112.xml   | TC_AI8112_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8112 | TC AI8112 04 Valid: 70 characters | ABC1234567898765 321ABC1234567898 654321ABC123456789876543212345678987 | .\Labels\BarcodeAI8112.xml   | TC_AI8112_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8200 | TC AI8200 01 Invalid: More than 70 characters | ABC12345678987654321ABC12345678987654321ABC1234567898765432123456789876 | .\Labels\BarcodeAI8200.xml   | TC_AI8200_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8200 | TC AI8200 02 Valid: Empty |  | .\Labels\BarcodeAI8200.xml   | TC_AI8200_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8200 | TC AI8200 03 Valid: Less than 70 characters | ABC123456789876543212345678987 | .\Labels\BarcodeAI8200.xml   | TC_AI8200_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 8200 | TC AI8200 04 Valid: 70 characters | ABC1234567898765 321ABC1234567898 654321ABC123456789876543212345678987 | .\Labels\BarcodeAI8200.xml   | TC_AI8200_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 90 | TC AI90 01 Invalid: More than 30 characters | 1234567898765432123456789876543 | .\Labels\BarcodeAI90.xml   | TC_AI90_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
      | Sato | 90 | TC AI90 02 Valid: Empty |  | .\Labels\BarcodeAI90.xml   | TC_AI90_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 90 | TC AI90 03 Valid: Less than 30 characters | e2345678987654321234567898765 | .\Labels\BarcodeAI90.xml   | TC_AI90_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 90 | TC AI90 04 Valid: 30 characters | 12345678987654321234567898765# | .\Labels\BarcodeAI90.xml   | TC_AI90_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 91 | TC AI91 01 Invalid: More than 90 characters | 1adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI91.xml   | TC_AI91_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 91 | TC AI91 02 Valid: Empty |  | .\Labels\BarcodeAI91.xml   | TC_AI91_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 91 | TC AI91 03 Valid: Less than 90 characters | dgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI91.xml   | TC_AI91_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 91 | TC AI91 04 Valid: 90 characters | adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI91.xml   | TC_AI91_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 92 | TC AI92 01 Invalid: More than 90 characters | 1adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI92.xml   | TC_AI92_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 92 | TC AI92 02 Valid: Empty |  | .\Labels\BarcodeAI92.xml   | TC_AI92_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 92 | TC AI92 03 Valid: Less than 90 characters | dgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI92.xml   | TC_AI92_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 92 | TC AI92 04 Valid: 90 characters | adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI92.xml   | TC_AI92_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 93 | TC AI93 01 Invalid: More than 90 characters | 1adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI93.xml   | TC_AI93_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 93 | TC AI93 02 Valid: Empty |  | .\Labels\BarcodeAI93.xml   | TC_AI93_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 93 | TC AI93 03 Valid: Less than 90 characters | dgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI93.xml   | TC_AI93_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 93 | TC AI93 04 Valid: 90 characters | adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI93.xml   | TC_AI93_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 94 | TC AI94 01 Invalid: More than 90 characters | 1adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI94.xml   | TC_AI94_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 94 | TC AI94 02 Valid: Empty |  | .\Labels\BarcodeAI94.xml   | TC_AI94_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 94 | TC AI94 03 Valid: Less than 90 characters | dgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI94.xml   | TC_AI94_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 94 | TC AI94 04 Valid: 90 characters | adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI94.xml   | TC_AI94_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 95 | TC AI95 01 Invalid: More than 90 characters | 1adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI95.xml   | TC_AI95_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 95 | TC AI95 02 Valid: Empty |  | .\Labels\BarcodeAI95.xml   | TC_AI95_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 95 | TC AI95 03 Valid: Less than 90 characters | dgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI95.xml   | TC_AI95_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 95 | TC AI95 04 Valid: 90 characters | adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI95.xml   | TC_AI95_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 96 | TC AI96 01 Invalid: More than 90 characters | 1adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI96.xml   | TC_AI96_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 96 | TC AI96 02 Valid: Empty |  | .\Labels\BarcodeAI96.xml   | TC_AI96_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 96 | TC AI96 03 Valid: Less than 90 characters | dgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI96.xml   | TC_AI96_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 96 | TC AI96 04 Valid: 90 characters | adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI96.xml   | TC_AI96_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 97 | TC AI97 01 Invalid: More than 90 characters | 1adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI97.xml   | TC_AI97_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 97 | TC AI97 02 Valid: Empty |  | .\Labels\BarcodeAI97.xml   | TC_AI97_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 97 | TC AI97 03 Valid: Less than 90 characters | dgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI97.xml   | TC_AI97_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 97 | TC AI97 04 Valid: 90 characters | adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI97.xml   | TC_AI97_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 98 | TC AI98 01 Invalid: More than 90 characters | 1adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI98.xml   | TC_AI98_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 98 | TC AI98 02 Valid: Empty |  | .\Labels\BarcodeAI98.xml   | TC_AI98_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 98 | TC AI98 03 Valid: Less than 90 characters | dgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI98.xml   | TC_AI98_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 98 | TC AI98 04 Valid: 90 characters | adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI98.xml   | TC_AI98_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 99 | TC AI99 01 Invalid: More than 90 characters | 1adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI99.xml   | TC_AI99_01.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 99 | TC AI99 02 Valid: Empty |  | .\Labels\BarcodeAI99.xml   | TC_AI99_02.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 99 | TC AI99 03 Valid: Less than 90 characters | dgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI99.xml   | TC_AI99_03.txt | G0L1EPrinter.SATO_Printerdata.txt |
#      | Sato | 99 | TC AI99 04 Valid: 90 characters | adgang til yrkesopplæring, og det skal være lik adgang for alle til høyere undervisning på | .\Labels\BarcodeAI99.xml   | TC_AI99_04.txt | G0L1EPrinter.SATO_Printerdata.txt |
