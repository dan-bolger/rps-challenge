Given(/^I am on the homepage$/) do
  visit '/'
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  expect(page.has_content?(arg1)).to be true
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  fill_in('name', :with => 'Dan')
end

When(/^I press "([^"]*)"$/) do |play|
  click_button(play)
end

Given(/^I am on the new game page$/) do
  visit '/new_game'
end

# Then(/^I should see the words "([^"]*)"$/) do |arg1|
#   expect(page.has_content?(arg1)).to be true
# end

# Then(/^I should see the words "([^"]*)" or "([^"]*)"$/) do |arg1, arg2|
#   expect(page.has_content?(arg1 || arg2).to be true
# end

Then(/^I should see the words "([^"]*)" or "([^"]*)" or "([^"]*)"$/) do |arg1, arg2, arg3|
  page.should satisfy {|page| page.has_content?(arg1) or page.has_content?(arg2) or page.has_content?(arg3)}
end