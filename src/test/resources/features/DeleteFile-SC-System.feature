
Feature: Sequence commands in System group

  Background: System sequence screen is open
    Given I go to line screen "System"

  Scenario: Delete an existing file successfully
    Given Source "C:\Source" is available
    And CodeIT Monitor is open
    And Sequence Monitor "SystemSequences" is open
    When I enter "Delete a single file successfully", "C:\Source\ActiveWorkOrder.csv"
    And I click DeleteFile
    Then I should see sequence command "3 DeleteFile" with status "AllOk"
    Then I should not see the file exists "C:\Source\ActiveWorkOrder.csv"
    And I close Sequence Monitor, CodeIT Monitor

  Scenario: Delete all files in folder successfully
    Given Source "C:\Source" is available
    When I enter "Delete a single file successfully", "C:\Source\*.*"
    And I click DeleteFile
    Then I should see no files exist in "C:\Source"

  Scenario: Delete all files in folder successfully
    Given Source "C:\Source" is available
    When I enter "Delete a single file successfully", "C:\Source\*.xml"
    And I click DeleteFile
    Then I should see no files exist with extension "C:\Source\*.xml"

  Scenario: Warning occurs when deleting a file that does not exist
    Given Source "C:\Source" is available
    And CodeIT Monitor is open
    And Sequence Monitor "SystemSequences" is open
    When I enter "Delete an un-existing file unsuccessfully", "C:\Source\hello.sql"
    And I click DeleteFile
    Then I should see sequence command "3 DeleteFile" with status "AllFail"
    And I close Sequence Monitor, CodeIT Monitor