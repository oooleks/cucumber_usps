@tracking
Feature: scenarios for tracking functionality

  Scenario: Search by tracking number
    Given I open browser and navigate to "http://usps.com"
    Then I type "1234567890" to tracking search field
    And I click on search arrow
    Then I should see Multiple items found message

