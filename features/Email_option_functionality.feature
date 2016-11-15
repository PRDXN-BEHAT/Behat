@insulated @javascript
Feature: Verify the Email Option Functionality
Scenario:For Email Option functionality
Given I am on "http://prdxnstaging2.com/breakloose-live/experience/test-product/"
And I scroll ".enquire_tab_tab" into view
And I click the ".border-ul-wrap .email" element
Then I should see href as "mailto:vishal.gupta.prdxn@gmail.com"