@insulated @javascript
Feature: Verify the sort by button functionality
Scenario: For sort by button functionality
Given I am on "prdxnstaging2.com/breakloose-live/"
And I wait 5 seconds
And I click on the span of li with text "Outdoor Experiences"
And I select "Newness" from "orderby_cat"
Then I should see sorted ".product" elements

