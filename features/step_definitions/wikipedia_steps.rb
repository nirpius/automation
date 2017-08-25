## Given steps

Given(/^I am on the Wikipedia home page$/) do
  desktop.wikipedia_home.load
end

## When steps

When(/^I search for "([^"]*)"$/) do |term|
  desktop.wikipedia_home.search_for(term)
end

## Then steps

Then(/^I should see the Wikipedia logo$/) do
  expect(desktop.wikipedia_home).to have_logo
end

Then(/^I should see the article for "([^"]*)"$/) do |article|
  title = desktop.wikipedia_test_automation.page_title.text
  expect(title).to eq(article)
end
