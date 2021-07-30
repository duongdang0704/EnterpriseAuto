@Commands
Feature: Sequence commands in System group

  Scenario Outline: Verify AddToTextFile seq commands
    Given I go to line screen "<Line>"
    And  I want to check TC "<TC>"
    When I enter "<Filename>", "<Text>", "<DoCreateDir>"
    And I click AddToTextFile
    Then I should see the correct result

    Examples:
      | TC  | Line | Filename  | Text  | DoCreateDir |
      | Add text to the new file in available directory | D:\Folder1\FileName.txt  | Welcome to CodeIT!  | | |
      | Add text to the new file in unavailable directory  | D:\Folder2\FileName.txt  | Welcome to CodeIT!  | | |
      | Add text to the existing file                     | D:\Folder1\FileName.txt  |  Welcome to CodeIT second times! | | |
      | Add special text (Vietnamese or Norwegian language) to the existing file  | D:\Folder1\FileName.txt  |  støtte De Forente Nasjoners arbeid for å opprettholde fred | | |
      | Add text to the existing file which is in Network | \\192.168.2.10\Testing\Folder1\FileName.txt |  støtte De Forente Nasjoners arbeid for å opprettholde fred | | |
      | Add text to the existing file which is mapped disk | \\CodeIT-Server\Folder\FileName.txt  |  støtte De Forente Nasjoners arbeid for å opprettholde fred | | |
      | Add text to the existing file which is in Network when having no authorization | D:\Folder1\FileName.txt  | Welcome to CodeIT!  | |                                                                       |
      | AddToTextFile while empty argument values | D:\Folder1\FileName.txt  | Welcome to CodeIT!  |  |                                                                                                           |
      | Add text to the new file in unavailable directory in network path | D:\Folder1\FileName.txt  | Welcome to CodeIT!  | DoCreateDir |                                                                         |
      | Add text to the new file in unavailable sub directory | D:\Folder\SubFolder\FileName.txt  | Welcome to CodeIT!  | DoCreateDir |                                                                            |
      | Add empty text to the existing file | D:\Folder\SubFolder\FileName.txt  | Welcome to CodeIT!  | DoCreateDir |                                                                                             |
      | Add text to wrong file name | D:\\Folder\\FileName.txt  | Welcome to CodeIT!  | DoCreateDir |                                                                                                             |
