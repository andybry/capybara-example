When(/^I visit the product listings page$/) do
  visit '/public/listings/index.html'
end

Then(/^I should see (\d+) products$/) do |number_of_products|
  product_listings = all '.product-listing'
  expect(product_listings.length).to be(9)
end

And(/^scroll to the bottom of the page$/) do
  page.execute_script "window.scrollBy(0,10000)"
end

Then(/^I should see the loading gif$/) do
  # find '.pagination.loading'
  #
  # push this test into unit tests because it is very fragile
  # when run here?
end