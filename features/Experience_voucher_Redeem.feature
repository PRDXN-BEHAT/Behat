@insulated @javascript
Feature: Verify the Redeem voucher functionality for Experience
Scenario:
Given I am on "http://prdxnstaging2.com/breakloose-live/"
And I follow "Redeem"
And I should see "Enter your 16 digit voucher code"
And I filled ".redeem-form #voucher-code" with output element
And I click the "#redeem-button" element
And I wait 5 seconds
And I click on the anchor text "11"
And I fill in "billing_first_name" with "Mayuri"
And I should not see "Please enter First Name"
And I should not see "Please enter a valid First Name"
And I fill in "billing_last_name" with "Sonawane"
And I should not see "Please enter Last Name"
And I should not see "Please enter a valid Last Name"
And I fill in "billing_address_1" with "Sant namdeo path"
And I should not see "Please enter Address"
And I should not see "Please enter atleast 3 characters"
And I fill in "billing_suburb" with "Dombivli"
And I should not see "Please enter Suburb/Town"
And I should not see "Please enter a valid Suburb/Town"
And I fill in "billing_postcode" with "421201"
And I should not see "Please enter Post Code"
And I should not see "Please enter atleast 2 characters"
And I fill in "billing_phone" with "1234567891"
And I should not see "Please enter Phone Number"
And I should not see "Please enter a valid Phone Number"
And I fill in "billing_email" with "amit.dinda.prdxn@gmail.com"
And I should not see "Please enter Email Address"
And I should not see "Please enter a valid Email Address"
And I click the ".chosen-single" element
And I click on the li text "India"
And I click the "#billing_state_chosen" element
And I click on the li text "Maharashtra"
And I click the "#no" element
And I click the "#redeem" element
And I wait 5 seconds
And I should see "OPERATOR CONTACT DETAILS AND INFORMATION WILL BE PROVIDED VIA EMAIL ON CONFIRMATION"
And I click the "#place_order" element
Then I should see "Woohoo and thanks for booking!"

Scenario: For checking mail in inbox of Gmail 
Given I am on "https://gmail.com"
And I wait 10 seconds
And I fill in "Email" with "amit.dinda.prdxn@gmail.com"
And I click the "#next" element
And I should not see "Sorry, Google doesn't recognize that email."
And I should see "Sign in"
And I fill in "Passwd" with "prdxn812016"
And I click the "#signIn" element
And I wait 10 seconds
And I click on the refresh of gmail
And I wait 10 seconds
And I click on the refresh of gmail
And I wait 10 seconds
And I click on the refresh of gmail
And I click on the span text "Your Break Loose booking receipt from" with current date
Then I should see "Test product"
