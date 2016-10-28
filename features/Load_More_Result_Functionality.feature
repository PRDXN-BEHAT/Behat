@insulated @javascript
Feature: Verify the load more functionality
Scenario: For load more functionality
Given I am on "prdxnstaging2.com/breakloose-live/"
And I wait 5 seconds
And I click on the span of li with text "Outdoor Experiences"
And I should see total ".product" elements
And I follow "Load More Results"
Then I should see more ".product" elements


