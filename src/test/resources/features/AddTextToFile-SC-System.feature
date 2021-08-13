@SequenceCommands
Feature: Sequence commands in System group

  Background: System sequence screen is open
    Given I go to line screen "System"

  Scenario Outline: Add text to the new file in available directory successfully
    Given Folder "<Folder>" is available
    When I enter "<TC>", "<Filename>", "<Text>", "<DoCreateDir>"
    And I click AddToTextFile
    Then I should see text "<Text>" existing in the file "<Filename>"

    Examples:
    | TC  | Folder  | Filename  | Text  | DoCreateDir |
    | Add text to the new file in available directory successfully | C:\Folder2 | C:\Folder2\FileName.txt | Welcome to CodeIT!  | |
    | Add text to the new file in available directory in network path successfully | \\\192.168.2.10\Testing\Folder2 | \\\192.168.2.10\Testing\Folder2\FileName.txt | Welcome to CodeIT! |  |

  Scenario Outline: Add text to the new file in unavailable directory not successfully
    Given Folder "<Folder>" is not available
    When I enter "<TC>", "<Filename>", "<Text>", "<DoCreateDir>"
    And I click AddToTextFile
    Then I should not see the file exists "<Filename>"
    And I should see warning "<Warning>" in log

    Examples:
    | TC  | Folder  | Filename  | Text  | DoCreateDir | Warning |
    | Add text to the new file in unavailable directory | C:\Folder2 | C:\Folder2\FileName.txt | Welcome to CodeIT!  | |  The file path C:\Folder2\FileName.txt does not exist |
    | Add text to the new file in unavailable directory in network path  | \\\192.168.2.10\Testing\Folder2 | \\\192.168.2.10\Testing\Folder2\FileName.txt | Welcome to CodeIT! |  | The file path \\\192.168.2.10\Testing\Folder2\FileName.txt does not exist |

  Scenario Outline: Add text to the new file in unavailable directory, but DoCreateDir = true successfully
    Given Folder "<Folder>" is not available
    When I enter "<TC>", "<Filename>", "<Text>", "<DoCreateDir>"
    And I click AddToTextFile
    Then I should see text "<Text>" existing in the file "<Filename>"

    Examples:
      | TC  | Folder  | Filename  | Text  | DoCreateDir |
      | Add text to the new file in unavailable directory, but DoCreateDir = true | C:\Folder2 | C:\Folder2\FileName.txt | Welcome to CodeIT!  | DoCreateDir |
      | Add text to the new file in unavailable directory in network path, but DoCreateDir = true  | \\\192.168.2.10\Testing\Folder2 | \\\192.168.2.10\Testing\Folder2\FileName.txt | Welcome to CodeIT! | DoCreateDir |
      | Add text to the new file in unavailable sub directory, but DoCreateDir = true               |  C:\Folder2                    | C:\Folder2\SubFolder\FileName.txt | Welcome to CodeIT!  | DoCreateDir |


  Scenario Outline: Add text to the existing file successfully
    Given File "<Filename>" is available
    When I enter "<TC>", "<Filename>", "<Text>", "<DoCreateDir>"
    And I click AddToTextFile
    Then I should see text "<Text>" existing in the file "<Filename>"

    Examples:
    | TC  | Filename  | Text  | DoCreateDir |
    | Add text to the file existing in local | C:\Folder1\FileName.txt  |  Welcome to CodeIT second times! | |
    | Add Norwegian text to the file existing in local | C:\Folder1\FileName.txt  |  støtte De Forente Nasjoners arbeid for å opprettholde fred | |
    | Add text to the file existing in network  | \\\192.168.2.10\Testing\Folder1\FileName.txt |  støtte De Forente Nasjoners arbeid for å opprettholde fred | |
    | Add text to the file existing in network via disk map | Z:\Folder\FileName.txt  |  støtte De Forente Nasjoners arbeid for å opprettholde fred | |

  Scenario: Warning happens when calling AddToTextFile with empty argument values
    When I enter "AddToTextFile while empty argument values", "", "", ""
    And I click AddToTextFile
    Then I should see warning "The file path  is invalid" in log

  Scenario: Warning happens when adding text to the existing file which is in Network having no authorization
    When I enter "Add text to the existing file which is in Network when having no authorization", "\\192.168.2.54\Testing\Folder1\Filename.txt", "Welcome to CodeIT", ""
    And I click AddToTextFile
    Then I should see warning "The file path \\192.168.2.54\Testing\Folder1\Filename.txt does not exist" in log
