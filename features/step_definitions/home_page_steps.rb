Given /^I am on the PairMatrix home page$/ do
  visit path_to("the home page")
end

Then /^I should see the home page$/ do
 page.should have_xpath("//title", :text => "Pair Matrix")
end