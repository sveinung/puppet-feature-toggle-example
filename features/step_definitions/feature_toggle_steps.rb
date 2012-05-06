Given /^I am on "([^"]*)"$/ do |url|
  visit url
end

Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content(text)
end

Then /^I should NOT see "([^"]*)"$/ do |text|
  page.should_not have_content(text)
end
