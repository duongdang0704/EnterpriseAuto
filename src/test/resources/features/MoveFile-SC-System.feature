@SequenceCommands
Feature: Sequence commands in System group

  Background: System sequence screen is open
    Given I go to line screen "System"

  Scenario Outline: Move file successfully when destination folder is available
    Given Source file "<SourceFolder>", destination folder "<DestinationFolder>" exists
    When I enter "<TC>", "<SourceFile>", "<DestinationFile>", "<DoCreateDir>"
    And I click MoveFile
    Then I should see the file exists "<CopiedFile>"
    And I should not see the file exists "<SourceFile>"

    Examples:
    | TC  | SourceFolder  | DestinationFolder | SourceFile  | DestinationFile | DoCreateDir | CopiedFile  |
    | Move file successfully when destination folder is available, keep file name | C:\Source | C:\Destination | C:\Source\LMC_ItemData_Big data.xml | C:\Destination\LMC_ItemData_Big data.xml  | | C:\Destination\LMC_ItemData_Big data.xml |
    | Move file successfully when destination folder is available, not specify name | C:\Source | C:\Destination | C:\Source\LMC_ItemData_Big data.xml  | C:\Destination            |              | C:\Destination\LMC_ItemData_Big data.xml |
    | Move file successfully when destination folder is on network path, rename file                       | C:\Source | \\\192.168.2.10\Testing\Destination | C:\Source\LMC_ItemData_Big data.xml  | \\\\192.168.2.10\Testing\Destination\LMC_ItemData_Big data_New.xml  | | \\\\192.168.2.10\Testing\Destination\LMC_ItemData_Big data_New.xml |
    | Move file successfully when source file is on network path                               | \\\192.168.2.10\Testing\Source | C:\Destination  |  \\\192.168.2.10\Testing\Source\LMC_ItemData_Big data.xml  | C:\Destination |                                           | C:\Destination\LMC_ItemData_Big data.xml  |


  Scenario: Move multiple files by wildcard successfully when destination folder is available
    Given Source file "C:\Source", destination folder "C:\Destination" exists
    When I enter "Copy all text files from source to destination, copy wildcard extension", "C:\Source\*.xml", "C:\Destination", ""
    And I click MoveFile
    Then I should see number of files in folder 14 "C:\Destination"
    And I should see number of files in folder 60 "C:\Source"

  Scenario: Move all files in folder successfully when destination folder is available
    Given Source file "C:\Source", destination folder "C:\Destination" exists
    When I enter "Move all text files from source to destination, copy wildcard all files", "C:\Source\*.*", "C:\Destination", ""
    And I click MoveFile
    Then I should see number of files in folder 74 "C:\Destination"
    And I should see number of files in folder 0 "C:\Source"

  Scenario: Move file successfully when destination folder is not available but DoCreateDir
    Given Source file "C:\Source", destination folder "C:\Destination" does not exist
    When I enter "Move file successfully when destination folder is not available but DoCreateDir", "C:\Source\LMC_ItemData_Big data.xml", "C:\Destination", "DoCreateDir"
    And I click MoveFile
    Then I should see the file exists "C:\Destination\LMC_ItemData_Big data.xml"
    And I should not see the file exists "C:\Source\LMC_ItemData_Big data.xml"

  Scenario: Move file unsuccessfully when source file or destination folder does not exist
    Given Source file "C:\Source", destination folder "C:\Destination" does not exist
    When I enter "Move file unsuccessfully when destination folder is not available", "C:\Source\LMC_ItemData_Big data.xml", "C:\Destination\LMC_ItemData_Big data.xml", ""
    And I click MoveFile
    Then I should not see the file exists "C:\Destination\LMC_ItemData_Big data.xml"
    And I should see warning "Destination: 'C:\Destination\LMC_ItemData_Big data.xml' that does not exist" in log

  Scenario: Move file while it is open
    Given Source file "C:\Source", destination folder "C:\Destination" does not exist
    And The source file "C:\Source\LMC_ItemData_Big data.xml" is open
    When I enter "Move file successfully while it is open", "C:\Source\LMC_ItemData_Big data.xml", "C:\Destination\LMC_ItemData_Big data.xml", "DoCreateDir"
    And I click MoveFile
    Then I should see the file exists "C:\Destination\LMC_ItemData_Big data.xml"

  Scenario Outline: Call Move File while arguments are empty
    Given Source file "<SourceFolder>", destination folder "<DestinationFolder>" exists
    When I enter "<TC>", "<SourceFile>", "<DestinationFile>", "<DoCreateDir>"
    And I click MoveFile
    Then I should see warning "<Warning>" in log

    Examples:
      | TC  | SourceFolder  | DestinationFolder | SourceFile  | DestinationFile | DoCreateDir | Warning |
      | Call MoveFile while source file is not specified | C:\Source | C:\Destination | | C:\Destination\LMC_ItemData_Big data.xml  | | System.ArgumentException: The path is not of a legal form. |
      | Call MoveFile while destination file is not specified | C:\Source | C:\Destination | C:\Source\LMC_ItemData_Big data.xml |  | | System.ArgumentException: The path is not of a legal form. |