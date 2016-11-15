@insulated @javascript
Feature: Verify the Search by region functionality
Scenario:For Search by region functionality
Given I am on "http://prdxnstaging2.com/breakloose-live/"
And I press "Menu"
And I hover over the element
And I follow "New South Wales"
Then I should see selected region ".product-cat-nsw" elements and product should have "product-cat-nsw"