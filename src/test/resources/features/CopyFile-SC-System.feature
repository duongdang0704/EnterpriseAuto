@SequenceCommands
Feature: Sequence commands in System group

  Background: System sequence screen is open
    Given I go to line screen "System"

  Scenario Outline: Copy file successfully when destination folder is available
    Given Source file "<SourceFolder>", destination folder "<DestinationFolder>" exists
    When I enter "<TC>", "<SourceFile>", "<DestinationFile>", "<DoCreateDir>"
    And I click CopyFile
    Then I should see the file exists "<CopiedFile>"

    Examples:
    | TC  | SourceFolder  | DestinationFolder | SourceFile  | DestinationFile | DoCreateDir | CopiedFile  |
    | Copy file successfully when destination folder is available, keep file name | C:\Source | C:\Destination | C:\Source\LMC_ItemData_Big data.xml | C:\Destination\LMC_ItemData_Big data.xml  | | C:\Destination\LMC_ItemData_Big data.xml |
    | Copy file successfully when destination folder is available, not specify name | C:\Source | C:\Destination | C:\Source\LMC_ItemData_Big data.xml  | C:\Destination            |              | C:\Destination\LMC_ItemData_Big data.xml |
    | Copy file successfully when destination folder is on network path, rename file                       | C:\Source | \\\192.168.2.10\Testing\Destination | C:\Source\LMC_ItemData_Big data.xml  | \\\\192.168.2.10\Testing\Destination\LMC_ItemData_Big data_New.xml  | | \\\\192.168.2.10\Testing\Destination\LMC_ItemData_Big data_New.xml |
    | Copy file successfully when source file is on network path                               | \\\192.168.2.10\Testing\Source | C:\Destination  |  \\\192.168.2.10\Testing\Source\LMC_ItemData_Big data.xml  | C:\Destination |                                           | C:\Destination\LMC_ItemData_Big data.xml  |


  Scenario: Copy multiple files by wildcard successfully when destination folder is available
    Given Source file "C:\Source", destination folder "C:\Destination" exists
    When I enter "Copy all text files from source to destination, copy wildcard extension", "C:\Source\*.xml", "C:\Destination", ""
    And I click CopyFile
    Then I should see all files match pattern "C:\Source\*.xml" exist in "C:\Destination"

  Scenario: Copy all files in folder successfully when destination folder is available
    Given Source file "C:\Source", destination folder "C:\Destination" exists
    When I enter "Copy all text files from source to destination, copy wildcard all files", "C:\Source\*.*", "C:\Destination", ""
    And I click CopyFile
    Then I should see number of files in "C:\Source" equal to "C:\Destination"

  Scenario: Copy file successfully when destination folder is not available but DoCreateDir
    Given Source file "C:\Source", destination folder "C:\Destination" does not exist
    When I enter "Copy file successfully when destination folder is not available but DoCreateDir", "C:\Source\LMC_ItemData_Big data.xml", "C:\Destination", "DoCreateDir"
    And I click CopyFile
    Then I should see the file exists "C:\Destination\LMC_ItemData_Big data.xml"

  Scenario: Copy file unsuccessfully when source file or destination folder does not exist
    Given Source file "C:\Source", destination folder "C:\Destination" does not exist
    When I enter "Copy file unsuccessfully when destination folder is not available", "C:\Source\LMC_ItemData_Big data.xml", "C:\Destination\LMC_ItemData_Big data.xml", ""
    And I click CopyFile
    Then I should not see the file exists "C:\Destination\LMC_ItemData_Big data.xml"

  Scenario: Copy file while it is open
    Given Source file "C:\Source", destination folder "C:\Destination" does not exist
    And The source file "C:\Source\LMC_ItemData_Big data.xml" is open
    When I enter "Copy file successfully while it is open", "C:\Source\LMC_ItemData_Big data.xml", "C:\Destination\LMC_ItemData_Big data.xml", "DoCreateDir"
    And I click CopyFile
    Then I should see the file exists "C:\Destination\LMC_ItemData_Big data.xml"

  Scenario Outline: Call Copy File while arguments are empty
    Given Source file "<SourceFolder>", destination folder "<DestinationFolder>" exists
    When I enter "<TC>", "<SourceFile>", "<DestinationFile>", "<DoCreateDir>"
    And I click CopyFile
    Then I should see warning "<Warning>" in log

    Examples:
      | TC  | SourceFolder  | DestinationFolder | SourceFile  | DestinationFile | DoCreateDir | Warning |
      | Call CopyFile while source file is not specified | C:\Source | C:\Destination | | C:\Destination\LMC_ItemData_Big data.xml  | | System.ArgumentException: The path is not of a legal form. |
      | Call CopyFile while destination file is not specified | C:\Source | C:\Destination | C:\Source\LMC_ItemData_Big data.xml |  | | System.ArgumentException: The path is not of a legal form. |