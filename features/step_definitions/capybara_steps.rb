@test1

When(/^I visit the (?:root|home) page$/) do
  visit('http://localhost:3000/')
end

Then(/^I should see "(.*?)"$/) do |text|
  page.has_content?(text)
end

Then(/^I should see "(.*?)" button$/) do |search|
  page.has_content?(search)
end

Then(/^I fill "(.*?)" in search options$/) do |name|
  fill_in('search', :with => name)
  sleep 1
end

Then(/^I click "(.*?)" button$/) do |button|
  click_on(button)
  sleep 1
end

Then(/^I should see "(.*?)" link$/) do |new|
  page.has_content?(new)
end

@test2

Then(/^I click "(.*?)" link$/) do |new|
  click_link(new)
  sleep 2
end

Then(/^I should see "(.*?)":$/) do |title, table|
  page.has_content?(title)
end

Then(/^I fill "(.*?)" in name$/) do |name|
  fill_in('invoice_name', :with => name)
  sleep 2
end

Then(/^I fill in the fields:$/) do |table|
  table.raw.each do |field, value|
  	fill_in(field, :with => value)
  end	
end

















