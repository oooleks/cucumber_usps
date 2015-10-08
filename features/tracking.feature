@tracking
Feature: scenarios for tracking functionality

  Background:
    Given I open browser and navigate to "http://usps.com"

  Scenario: Search by tracking number
    Then I type "1234567890" to tracking search field
    And I click on search arrow
    Then I should see Multiple items found message

  Scenario: Search by tracking number in global field
    Then I type "1234567890" into global tracking search field
    And I click on search icon
    Then I should see Multiple items found message
