Then /^I should see$/ do |contents|
  @browser.last_response.body.should include(contents)
end