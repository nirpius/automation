Feature: Checking Wikipedia
  As someone who cares about logos
  When I visit Wikipedia
  I should be able to see the Wikipedia logo

  Scenario: Checking for the Wikipedia Logo
    Given I am on the Wikipedia home page
    Then I should see the Wikipedia logo
