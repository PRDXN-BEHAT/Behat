@insulated @javascript
Feature: Verify Funtionality of Banner Image Slider
Scenario: For Banner Image Slider Functionality
Given I am on "http://prdxnstaging2.com/breakloose-live/"
And I follow "1"
And I follow "Next"
Then I should see Alt text as "Our gift vouchers do not expire"
And I wait 2 seconds
And I follow "Next"
Then I should see Alt text as "hot-air-ballooning-promo"
And I wait 2 seconds
And I follow "Next"
Then I should see Alt text as "Kayaking tours on Sydney Harbour"
And I wait 2 seconds
And I follow "Previous"
Then I should see Alt text as "hot-air-ballooning-promo"
And I wait 2 seconds
And I follow "Previous"
Then I should see Alt text as "Our gift vouchers do not expire"
And I wait 2 seconds
And I follow "Previous"
Then I should see Alt text as "Kayaking tours on Sydney Harbour"