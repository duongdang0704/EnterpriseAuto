Feature: UDF functions

  Scenario Outline: Check Concatenate function
    When I enter Concatenate parameter value "<Concatenate_para1>" and "<Concatenate_para2>"
    Then I should see correct "<Concatenate_para1>" and "<Concatenate_para2>" from Concatenate

    Examples:
      | Concatenate_para1 | Concatenate_para2 |
      | hello             | w@rld             |
      | åäö               | 測試              |

  Scenario Outline: Check GetText function
    When I enter GetText parameter value "<GetText_para>"
    Then I should see correct "<GetText_Result>" from GetText

    Examples:
      | GetText_para      | GetText_Result    |
      | V@1u$_            | V@1u$_            |
      | sökvägen følgende | sökvägen følgende |

  Scenario Outline: Check GS1AddCheckSum function
    When I enter GS1AddChecksum parameter value "<GS1AddChecksum_para>"
    Then I should see correct "<GS1AddChecksum_Result>" from GS1AddCheckSum

    Examples:
      | GS1AddChecksum_para | GS1AddChecksum_Result |
      | value               | result                |

  Scenario Outline: Check Length function
    When I enter Length parameter value "<Length_para>"
    Then I should see the correct length of value "<Length_para>" from Length
    Examples:
      | Length_para |
      | Hell0 W@0rd |

  Scenario Outline: Check Lowercase function
    When I enter Lowercase parameter value "<Lowercase_para>"
    Then I should see correct "<Lowercase_para>" from Lowercase

    Examples:
      | Lowercase_para |
      | Hell0 W@rd     |

  Scenario Outline: Check Uppercase function
    When I enter Uppercase parameter value "<Uppercase_para>"
    Then I should see correct "<Uppercase_para>" from Uppercase

    Examples:
      | Uppercase_para |
      | Hell0 W@rd     |

  Scenario Outline: Check Replace function
    When I enter Replace parameter value "<Replace_para1>", "<Replace_para2>", and "<Replace_para3>"
    Then I should see correct "<Replace_Result>" from Replace

    Examples:
      | Replace_para1 | Replace_para2 | Replace_para3 | Replace_Result |
      | Hello W@rd!   | Hello         | Hi            | Hi W@rd!       |

  Scenario Outline: Check Trim function
    When I enter Trim parameter value "<Trim_para1>" and "<Trim_para2>"
    Then I should see correct "<Trim_Result>" from Trim

    Examples:
      | Trim_para1     | Trim_para2 | Trim_Result  |
      | aa_bb_aa_cc_   | aa         | _bb_aa_cc_   |
      | aa_bb_aa_cc_AA | aa         | _bb_aa_cc_AA |

  Scenario Outline: Check TrimStart function
    When I enter TrimStart parameter value "<TrimStart_para1>" and "<TrimStart_para2>"
    Then I should see correct "<TrimStart_Result>" from TrimStart

    Examples:
      | TrimStart_para1 | TrimStart_para2 | TrimStart_Result |
      | aa_bb_aa_cc_aa  | aa              | _bb_aa_cc_aa     |

  Scenario Outline: Check SubString function
    When I enter SubString parameters value into "<SubString_para1>", "<SubString_para2>" and "<SubString_para3>"
    Then I should see correct "<SubString_Result>" from SubString

    Examples:
      | SubString_para1    | SubString_para2 | SubString_para3 | SubString_Result |
      | automation testing |                 | 5               |                  |
      | automation testing | 2               | -1              |                  |
      | automation testing | 2               |                 |                  |
      | automation testing | 2               | 5               | tomat            |

  Scenario Outline: Check Split function
    When I enter Split text and splitchar value into "<Split_para1>" and "<Split_para2>"
    Then I should see the correct "<Split_Result>" from Split

    Examples:
      | Split_para1        | Split_para2 | Split_Result         |
      | Welcome to codeIT! | co          | Wel#me to #deIT!#¤   |
      | Welcome to codeIT! | [Space]     | Welcome#to#codeIT!#¤ |

  Scenario Outline: Check Pad function with padding left
    When I enter Pad param into "<Total_Width>", "<Padding_Char>", and "<Text>"
    Then I should see the correct "<Padding_Result>" from Pad Letf

    Examples:
      | Total_Width | Padding_Char | Text  | Padding_Result |
      | 9           | #            | 12345 | ####12345      |
      | 9           | #            |       | #########      |
      |             |              | 12345 |                |
      |             | #            | 12345 |  12345         |


  Scenario Outline: Check IndexOf function get text at first position
    When I enter text and search text "<Text>" and "<Search_Text>" into IndexOf
    Then I should see the correct IndexOf from "<Text>" and "<Search_Text>"

    Examples:
      | Text                 | Search_Text |
      | Welcome to codeIT!   | co           |
      | Welcome to codeIT!   | hello        |

  Scenario Outline: Check ByteArray function
    When I enter byte array text "<Text>"
    Then I should see the correct "<Text>" from ByteArray

    Examples:
      | Text    |
      | C@deIT  |

  Scenario Outline: Check Char function
    When I enter Ascii value "<Ascii_Value>"
    Then I should see the correct "<Char_Result>" from Char

    Examples:
      | Ascii_Value | Char_Result |
      |      65     |       A     |
      |      77     |       M     |

  Scenario Outline: Check ASC function
    When I enter ASC value "<ASC_Value>"
    Then I should see the correct "<ASC_Result>" from ASC

    Examples:
      | ASC_Value | ASC_Result |
      |    A      |     65     |
      |    a      |     97     |

  Scenario Outline: Check GetAIValue function
    When I enter GetAIValue para "<AI_Text>", "<AI_Number>", "<Separator>"
    Then I should see the correct "<ASC_Result>" from GetAIValue

    Examples:
      | AI_Text           | AI_Number | Separator | ASC_Result |
      | 1099883773#310390 |   3103    |    #      |     90     |

  Scenario Outline: Check ConvertString function
    When I enter ConvertString para "<Text>", "<From_Code_Page>", "<To_Code_Page>"
    Then I should see the correct "<Convert_String_Result>" from ConvertString

    Examples:
      | Text | From_Code_Page | To_Code_Page | Convert_String_Result |
      | åäö  |     utf-8      |  iso-8859-1  |        Ã¥Ã¤Ã¶         |
      | 測試  |     utf-8      |  iso-2022-jp |        ・ｸｬ・ｩｦ        |

  Scenario Outline: Check URLEncode function
    When I enter URLEncode para "<Text>"
    Then I should see the correct "<Text>" from URLEncode

    Examples:
      | Text                         |
      | http://CodeIT.com/?q=A$ds&Tg |
      | åäö                          |

  Scenario Outline: Check URLDecode function
    When I enter URLDecode para "<Text>"
    Then I should see the correct "<Text>" from URLDecode

    Examples:
      | Text                            |
      | https%3a%2f%2fwww.google.com.vn |
      | %c3%a5%c3%a4%c3%b6              |