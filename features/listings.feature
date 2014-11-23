Feature: Listings Page
  Allow a user to look through the products in the category

  Scenario: Viewing the initial set of products
    When I visit the product listings page
    Then I should see 9 products

  Scenario: Viewing more products by scrolling down the page
    When I visit the product listings page
    And  scroll to the bottom of the page
   Then I should see the loading gif
    And I should see 18 products
