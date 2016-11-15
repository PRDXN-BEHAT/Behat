@insulated @javascript
Feature: Verify the External Links functionality
Scenario: For External Links functionality
Given I am on "prdxnstaging2.com/breakloose-live/"
And I wait 5 seconds
And I click on the help link
And I wait 5 seconds
And I switch window
Then I should see "Submit a request"


