@insulated @javascript
Feature: Verify the search functionality
Scenario: For search functionality
Given I am on "prdxnstaging2.com/breakloose-live/"
And I wait 5 seconds
And I follow "Search"
And I fill in "s" with "gift"
And I click the "#searchsubmit" element
Then I should see "Search Results for: gift"