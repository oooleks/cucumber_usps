Then(/^I type "([^"]*)" to tracking search field$/) do |tracking_number|
  @browser.find_element(:id, "quick-tools--input").send_keys tracking_number
end

Then(/^I click on search arrow$/) do
  @browser.find_element(:css, "input.quick-tools--track--submit.input--search").click
end

Then(/^I should see Multiple items found message$/) do
  text = @browser.find_element(:css, "div.tracking-progress.status-duplicate").find_element(:css, "p.warning").text
  expect(text).to be == "Multiple items found."
end

Then(/^I type "([^"]*)" into global tracking search field$/) do |tracking_number|
  @browser.find_element(:id, "global-header--search-track").send_keys tracking_number
end

And(/^I click on search icon$/) do
  @browser.find_element(:css, "span.search--track.input--wrap.input--wrap--alternate-background").find_element(:css, "input.search--submit").click
end