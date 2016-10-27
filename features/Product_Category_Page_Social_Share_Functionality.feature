@insulated @javascript
Feature: Verify the social icon functionality on product category page
Scenario: For social icon functionality on product category page
Given I am on "prdxnstaging2.com/breakloose-live/"
And I wait 5 seconds
And I click on the span of li with text "Outdoor Experiences"
And I wait 5 seconds
And I click the ".addthis_button_facebook_share" element
And I wait 5 seconds
And I switch window
Then I should see "Log in to use your Facebook account with AddThis Likes."