Given(/^I am on the homepage$/) do
  visit "/"
end

When(/^I follow "([^"]*)"$/) do |link|
  click_link link
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_content text
end


Given(/^I am on the new game page$/) do
  visit '/new_game'
end

When(/^I type in "([^"]*)" with "([^"]*)"$/) do |field, name|
  fill_in(field, :with => name)
end

When(/^I click "([^"]*)"$/) do |button|
  click_button button
end