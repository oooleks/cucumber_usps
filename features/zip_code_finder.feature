Feature: Zip code finder

  Scenario: User should find zip code - happy path to look up zip code
    Given I open browser and navigate to "http://usps.com"
    When I navigate to USPS Look Up Zip code page
    Then I type "1600 Pennsylvania Avenue Northwest" to street address
    Then I type "Washington" to city field
    Then I select "DC - District of Columbia" from states dropdown list
    And I click Find Zip Code button
    Then I see results on Look up a zip code page

  @zip_code
  Scenario Outline: Search for zip in different locations
    Given I open browser and navigate to "http://usps.com"
    When I navigate to USPS Look Up Zip code page
    Then I type "<address>" to street address
    Then I type "<city>" to city field
    Then I select "<state>" from states dropdown list
    And I click Find Zip Code button
    Then I see results on Look up a zip code page

    Examples: addresses
    |address                           |city      |state                    |
    |1600 Pennsylvania Avenue Northwest|Washington|DC - District of Columbia|
    |1587 Parkview Avenue              |San Jose  |CA - California          |