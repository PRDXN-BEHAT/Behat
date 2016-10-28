@insulated @javascript
Feature: Verify the scroll functionality
Scenario: For scroll functionality
Given I am on "prdxnstaging2.com/breakloose-live/"
And I wait 5 seconds
And I scroll ".fb" into view
And I click the ".jump-to-bottom" element
And I wait 5 seconds
Then I click the ".jump-to-top" element
And I wait 5 seconds
