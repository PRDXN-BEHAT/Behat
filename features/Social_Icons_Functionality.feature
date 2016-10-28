@insulated @javascript
Feature: Verify the social icon functionality
Scenario: For social icon functionality
Given I am on "prdxnstaging2.com/breakloose-live/"
And I wait 5 seconds
And I follow "Instagram"
And I wait 5 seconds
And I switch window
Then I should see "breakloose"