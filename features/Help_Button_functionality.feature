@insulated @javascript
Feature: Verify the Help button functionality
Scenario: For help button functionality
Given I am on "prdxnstaging2.com/breakloose-live/"
And I wait 5 seconds
And I click an element with ID "launcher"
And I wait 5 seconds
And I switch to the iframe "ticketSubmissionForm"
Then I should see "Leave us a message"

