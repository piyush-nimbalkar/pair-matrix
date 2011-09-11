When /^I choose "([^"]*)"$/ do |page|
  click_link page
end

Then /^I will see "([^"]*)"$/ do |msg|
  page.should have_content(msg)
end
