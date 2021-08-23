
Feature: Sequence commands in System group

  Background: System sequence screen is open
    Given I go to line screen "System"

  Scenario Outline: GetFileInfo for folder
    Given Source "<Folder>" is available
    And CodeIT Monitor is open
    And Sequence Monitor "<SequenceGroup>" is open
    When I enter test cases "<TC>"
    And I enter sequence parameters "<Filename>", "<NoOfFiles>", "<OrderBy>", "<Sort>"
    And I click button "GetFileInfo"
    Then I should see result "<Result>"
    And I should see sequence command "6 GetFileInfo" with status "<Status>"
    And I close Sequence Monitor, CodeIT Monitor

    Examples:
      | TC  | Folder  | SequenceGroup | Filename  | NoOfFiles | OrderBy | Sort  | Result  | Status  |
      | GetFileInfo for folder with default values (all files, order by name asc)  | C:\Source | SystemSequences | C:\Source |  |  |  |  a | AllOk |
      | GetFileInfo for files in folder with default values (all files, order by name asc)  | C:\Source | SystemSequences | C:\Source\ |  |  |  |  a | AllOk |
      | GetFileInfo for folder, order by name  | C:\Source | SystemSequences | C:\Source\ |  | Name |  |  a | AllOk |
      | GetFileInfo for folder, order by date created  | C:\Source | SystemSequences | C:\Source\ |  | DateCreated |  |  a | AllOk |
      | GetFileInfo for folder, order by date modified  | C:\Source | SystemSequences | C:\Source\ |  | DateModified |  |  a | AllOk |
      | GetFileInfo for folder, order by size  | C:\Source | SystemSequences | C:\Source\ |  | Size |  |  a | AllOk |
      | GetFileInfo for folder, order by type  | C:\Source | SystemSequences | C:\Source\ |  | Type |  |  a | AllOk |
      | GetFileInfo for folder, order by name asc  | C:\Source | SystemSequences | C:\Source\ |  | Name | Ascending |  a | AllOk |
      | GetFileInfo for folder, order by name desc  | C:\Source | SystemSequences | C:\Source\ |  | Name | Descending |  a | AllOk |
      | GetFileInfo for folder, order by date modified asc  | C:\Source | SystemSequences | C:\Source\ |  | DateModified | Ascending |  a | AllOk |
      | GetFileInfo for folder, order by modified desc  | C:\Source | SystemSequences | C:\Source\ |  | DateModified | Descending |  a | AllOk |
      | GetFileInfo for folder, specify number of files | C:\Source | SystemSequences | C:\Source\ | 15 |  |  |  a | AllOk |
      | GetFileInfo for folder, specify particular file type | C:\Source | SystemSequences | C:\Source*.xml |  |  |  |  a | AllOk |
      | GetFileInfo for folder, specify particular file | C:\Source | SystemSequences | C:\SourceBook_Attribute.xml |  |  |  |  a | AllOk |
      | GetFileInfo for folder, folder not exist | C:\Source | SystemSequences | C:\Source1\ |  |  |  |  a | AllOk |
      | GetFileInfo for folder, file not exist | C:\Source | SystemSequences | C:\SourceBook_Attribute1.xml |  |  |  |  a | AllOk |
      | GetFileInfo for folder, empty arguments | C:\Source | SystemSequences |  |  |  |  |  a | AllOk |
      | GetFileInfo for folder, invalid value: NoOfFiles | C:\Source | SystemSequences |  C:\Source*.xml | test |  |  |  a | AllOk |
      | GetFileInfo for folder, invalid value: FilesName | C:\Source | SystemSequences |  Hello |  |  |  |  a | AllOk |
      | GetFileInfo for folder, invalid value: OrderBy | C:\Source | SystemSequences |  C:\Source*.xml |  | test |  |  a | AllOk |
      | GetFileInfo for folder, invalid value: Sort | C:\Source | SystemSequences |  C:\Source*.xml |  |  | test |  a | AllOk |


