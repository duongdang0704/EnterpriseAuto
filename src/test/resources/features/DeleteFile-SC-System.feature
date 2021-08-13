
Feature: Sequence commands in System group

  Background: System sequence screen is open
    Given I go to line screen "System"

  Scenario: Delete an existing file successfully
    Given File {string} is available
    When I enter File

  Scenario: Delete all files in folder successfully

  Scenario: Warning occurs when deleting a file that does not exist