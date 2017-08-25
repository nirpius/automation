## Given steps

Given(/^I am on the Wikipedia home page$/) do
  desktop.wikipedia_home.load
end

## When steps

## Then steps

Then(/^I should see the Wikipedia logo$/) do
  expect(desktop.wikipedia_home).to have_logo
end
