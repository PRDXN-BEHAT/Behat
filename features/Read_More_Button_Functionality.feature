@insulated @javascript
Feature: Verify the read more button functionality
Scenario: For read more button functionality
Given I am on "prdxnstaging2.com/breakloose-live/"
And I wait 5 seconds
And I should see "Gift vouchers or gift certificates are a great idea for some. But over the years they have come under some very valid"
And I follow "Read More >"
Then I should see "Gift vouchers or gift certificates are a great idea for some. But over the years they have come under some very valid scrutiny, to the extent that in 2012 the Federal Government undertook an extensive review of gift voucher industry."