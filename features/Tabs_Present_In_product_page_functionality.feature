@insulated @javascript
Feature: Verify the Tab Present In Product Page Functionality
Scenario:For Tab Present In Product Page Functionality functionality
Given I am on "http://prdxnstaging2.com/breakloose-live/experience/test-product/"
And I follow "Enquire"
And I wait 2 seconds
And I follow "Tell a Friend"
And I wait 2 seconds
Then I follow "Things To Know"