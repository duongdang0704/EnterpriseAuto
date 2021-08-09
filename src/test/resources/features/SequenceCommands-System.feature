@Commands
Feature: Sequence commands in System group

  Background: System sequence screen is open
    Given I go to line screen "System"

  Scenario Outline: Add text to the new file in available directory successfully
    Given Folder "<Folder>" is available
    When I enter TC "<TC>", filename "<Filename>", text "<Text>", DoCreateDir "<DoCreateDir>"
    And I click AddToTextFile
    Then I should see context existing in the file

    Examples:
    | TC  | Folder  | Filename  | Text  | DoCreateDir |
    | Add text to the new file in unavailable directory successfully | C:\Folder2 | C:\Folder2\FileName.txt | Welcome to CodeIT!  | |
    | Add text to the new file in unavailable directory in network path successfully | \\192.168.2.10\Testing\Folder2 | \\192.168.2.10\Testing\Folder2\FileName.txt | Welcome to CodeIT! |  |

  Scenario Outline: Add text to the new file in unavailable directory
    Given Folder "<Folder>" is not available
    When I enter TC "<TC>", filename "<Filename>", text "<Text>", DoCreateDir "<DoCreateDir"
    And I click AddToTextFile
    Then I should not see the file exists

    Examples:
    | TC  | Folder  | Filename  | Text  | DoCreateDir |
    | Add text to the new file in unavailable directory | C:\Folder2 | C:\Folder2\FileName.txt | Welcome to CodeIT!  | |
    | Add text to the new file in unavailable directory in network path  | \\192.168.2.10\Testing\Folder2 | \\192.168.2.10\Testing\Folder2\FileName.txt | Welcome to CodeIT! |  |

  Scenario Outline: Add text to the new file in unavailable directory, but DoCreateDir = true
    Given Folder "<Folder>" is not available
    When I enter TC "<TC>", filename "<Filename>", text "<Text>", DoCreateDir "<DoCreateDir"
    And I click AddToTextFile
    Then I should see context existing in the file

    Examples:
      | TC  | Folder  | Filename  | Text  | DoCreateDir |
      | Add text to the new file in unavailable directory, but DoCreateDir = true | C:\Folder2 | C:\Folder2\FileName.txt | Welcome to CodeIT!  | DoCreateDir |
      | Add text to the new file in unavailable directory in network path, but DoCreateDir = true  | \\192.168.2.10\Testing\Folder2 | \\192.168.2.10\Testing\Folder2\FileName.txt | Welcome to CodeIT! | DoCreateDir |
      | Add text to the new file in unavailable sub directory, but DoCreateDir = true               |  C:\Folder2                    | C:\Folder2\SubFolder\FileName.txt | Welcome to CodeIT!  | DoCreateDir |


  Scenario Outline: Add text to the existing file
    Given File "<Filename>" is available
    When I enter TC "<TC>", filename "<Filename>", text "<Text>", DoCreateDir "<DoCreateDir>"
    And I click AddToTextFile
    Then I should see context existing in the file

    Examples:
    | TC  | Filename  | Text  | DoCreateDir |
    | Add text to the file existing in local | C:\Folder1\FileName.txt  |  Welcome to CodeIT second times! | |
    | Add Norwegian text to the file existing in local | C:\Folder1\FileName.txt  |  støtte De Forente Nasjoners arbeid for å opprettholde fred | |
    | Add text to the file existing in network  | \\192.168.2.10\Testing\Folder1\FileName.txt |  støtte De Forente Nasjoners arbeid for å opprettholde fred | |
    | Add text to the file existing in network via disk map | \\Z\Folder\FileName.txt  |  støtte De Forente Nasjoners arbeid for å opprettholde fred | |

  Scenario: AddToTextFile while empty argument values
    When I enter TC "AddToTextFile while empty argument values", filename "", text "", DoCreateDir ""
    And I click AddToTextFile
    Then I should see warning "The file path  is invalid" in log

  Scenario: Add text to the existing file which is in Network when having no authorization
    When I enter TC "Add text to the existing file which is in Network when having no authorization", filename "\\192.168.2.54\Testing\Folder1\Filename.txt", text "Welcome to CodeIT ", DoCreateDir ""
    And I click AddToTextFile
    Then I should see warning "The file path \\192.168.2.54\Testing\Folder1\Filename.txt does not exist" in log
