
Feature: Sequence commands in System group

  Background: System sequence screen is open
    Given I go to line screen "System"

  Scenario Outline: FindFile
    Given Source "<Folder>" is available
    And CodeIT Monitor is open
    And Sequence Monitor "<SequenceGroup>" is open
    When I enter "<TC>", "<File>"
    And I click FindFile
    Then I should see result "<Result>"
    And I should see sequence command "5 FindFile" with status "<Status>"
    And I close Sequence Monitor, CodeIT Monitor

    Examples:
    | TC  | Folder  | SequenceGroup | File  | Result  | Status  |
    | FindFile exact path successfully  | C:\Source | SystemSequences | C:\Source\json.txt | C:\Source\json.txt | AllOk |
    | FindFile wildcard path successfully | C:\Source | SystemSequences | C:\Source\*.*  | C:\Source\ActiveWorkOrder.csv | AllOk |
    | FindFile wildcard path from network successfully | \\\192.168.2.10\Testing\Source | SystemSequences | \\\192.168.2.10\Testing\Source\*.* | \\\192.168.2.10\Testing\Source\ActiveWorkOrder.csv | AllOk |
    | FindFile exact not exist  | C:\Source | SystemSequences | C:\Source\hello.sql | | AllFail |
    | FindFile wildcard not exist |  C:\Source  | SystemSequences | C:\Source\*.sql | | AllFail |
    | FindFile empty parameter|  C:\Source      | SystemSequences |  | |  AllFail |

