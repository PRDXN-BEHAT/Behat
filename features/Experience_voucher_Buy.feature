@insulated @javascript
Feature: Verify Funtionality of Buy a Experience voucher 
Scenario: For Purchasing Experience voucher
Given I am on "http://prdxnstaging2.com/breakloose-live/experience/test-product/"
And I press "Buy a gift voucher!"
And I fill in "6586-1_voucher_for_first_name" with "Mayuri"
And I should not see "Please enter First Name"
And I should not see "Please enter a valid First Name"
And I fill in "6586-1_voucher_for_last_name" with "Sonawane"
And I should not see "Please enter Last Name"
And I should not see "Please enter a valid Last Name"
And I fill in "6586-1_voucher_content_to" with "Amit"
And I should not see "Please enter Recipient Name"
And I should not see "Please enter a valid Recipient Name"
And I fill in "6586-1_voucher_content_from" with "Mayuri"
And I should not see "Please enter Sender Name"
And I should not see "Please enter a valid Sender Name"
And I fill in "6586-1_voucher_content_message" with "Happy Birthday"
And I should not see "Please enter a Message"
And I should not see "Please enter atleast 2 characters.."
And I fill in "6586-1_billing_first_name" with "Mayuri"
And I should not see "Please enter First Name"
And I should not see "Please enter a valid First Name"
And I fill in "6586-1_billing_last_name" with "Sonawane"
And I should not see "Please enter Last Name"
And I should not see "Please enter a valid Last Name"
And I fill in "6586-1_billing_address_1" with "Sant namdeo path"
And I should not see "Please enter Address"
And I should not see "Please enter atleast 3 characters"
And I fill in "6586-1_billing_suburb" with "Dombivli"
And I should not see "Please enter Suburb/Town"
And I should not see "Please enter a valid Suburb/Town"
And I fill in "6586-1_billing_postcode" with "421201"
And I should not see "Please enter Post Code"
And I should not see "Please enter atleast 2 characters"
And I fill in "6586-1_billing_phone" with "1234567891"
And I should not see "Please enter Phone Number"
And I should not see "Please enter a valid Phone Number"
And I fill in "6586-1_billing_email" with "amit.dinda.prdxn@gmail.com"
And I should not see "Please enter Email Address"
And I should not see "Please enter a valid Email Address"
And I click the ".chosen-single" element
And I click on the li text "India"
And I click the "#6586_1_billing_state_chosen" element
And I click on the li text "Maharashtra"
And I click the "#6586-1_email_voucher_email_check" element
And I fill in "6586-1_email_voucher_email" with "amit.dinda.prdxn@gmail.com"
And I press "Pay Now"
And I should not see "Please select Country"
And I should not see "Please enter State"
And I click the "#payment_method_eway" element
And I press "Submit"
And I wait 5 seconds
And I fill in "EWAY_TEMPCARDNUMBER" with "5123456789012346"
And I fill in "EWAY_EXPIRY" with "0517"
And I fill in "EWAY_CARDCVN" with "100"
And I press "Confirm and Pay"
Then I should see "Woohoo` and Thanks!"

Scenario: For checking mail in inbox of Gmail 
Given I am on "https://gmail.com"
And I wait 10 seconds
And I fill in "Email" with "amit.dinda.prdxn@gmail.com"
And I click the "#next" element
And I should not see "Sorry, Google doesn't recognize that email."
And I should see "Sign in"
And I fill in "Passwd" with "prdxn812016"
And I click the "#signIn" element
And I wait 15 seconds
And I click on the refresh of gmail
And I wait 10 seconds
And I click on the refresh of gmail
And I wait 10 seconds
And I click on the refresh of gmail
And I click on the span bold text "You have received a Break Loose Gift Voucher"
And I wait 10 seconds
Then I should see "RECEIPT"
And I select the voucher
