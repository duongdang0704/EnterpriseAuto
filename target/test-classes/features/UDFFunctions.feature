Feature: UDF functions

  Scenario Outline: Check Concatenate function
    When I enter Concatenate parameter value "<Concatenate_para1>" and "<Concatenate_para2>"
    Then I should see correct "<Concatenate_result>" from Concatenate

    Examples:
      | Concatenate_para1  | Concatenate_para2  | Concatenate_result  |
      | hello   | world   |  helloworld   |
      | 1#$%%   | test    | adkd          |

  Scenario Outline: Check GetText function
    When I enter GetText parameter value "<GetText_para>"
    Then I should see correct "<GetText_Result>" from GetText

    Examples:
      | GetText_para  | GetText_Result  |
      | value         | result          |

  Scenario Outline: Check GS1AddCheckSum function
    When I enter GS1AddChecksum parameter value "<GS1AddChecksum_para>"
    Then I should see correct "<GS1AddChecksum_Result>" from GS1AddCheckSum

    Examples:
      | GS1AddChecksum_para | GS1AddChecksum_Result |
      | value               | result                |

    Scenario Outline: Check Length function
    When I enter Length parameter value "<Length_para>"
    Then I should see correct "<Length_Result>" from Length

      Examples:
        | Length_para | Length_Result |
        | value       | result        |

  Scenario Outline: Check Lowercase function
    When I enter Lowercase parameter value "<Lowercase_para>"
    Then I should see correct "<Lowercase_Result>" from Lowercase

    Examples:
      | Lowercase_para | Lowercase_Result |
      | value       | result        |

  Scenario Outline: Check Uppercase function
    When I enter Uppercase parameter value "<Uppercase_para>"
    Then I should see correct "<Uppercase_Result>" from Uppercase

    Examples:
      | Uppercase_para | Uppercase_Result |
      | value       | result        |

  Scenario Outline: Check Replace function
    When I enter Replace parameter value "<Replace_para1>", "<Replace_para2>", and "<Replace_para3"
    Then I should see correct "<Replace_Result>" from Replace

    Examples:
      | Replace_para1 | Replace_para2 | Replace_para3 | Replace_Result  |
      | value1        | value2        | value3        | result          |

  Scenario Outline: Check Trim function
    When I enter Trim parameter value "<Trim_para>"
    Then I should see correct "<Trim_Result>" from Trim

    Examples:
      | Trim_para | Trim_Result |
      | value     | result      |

  Scenario Outline: Check TrimStart function
    When I enter TrimStart parameter value "<TrimStart_para>"
    Then I should see correct "<TrimStart_Result>" from TrimStart

    Examples:
      | TrimStart_para | TrimStart_Result |
      | value          | result           |


