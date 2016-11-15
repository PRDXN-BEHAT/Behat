@insulated @javascript
Feature: Verify the Print Option Functionality
Scenario:For Print Option functionality
And I am on "http://prdxnstaging2.com/breakloose-live/experience/test-product/"
And I scroll ".enquire_tab_tab" into view
Then I click the ".border-ul-wrap .print" element
And I switch window
And I wait 10 seconds
Then I should see "Save as PDF"