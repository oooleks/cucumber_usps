When(/^I click on Sign In button on Home page$/) do
  @browser.find_element(:id, "anchor-login").click
end

Then(/^I type my login "([^"]*)"$/) do |login|
  @browser.find_element(:id, "userName").send_keys login
end

And(/^I type my password "([^"]*)"$/) do |password|
  @browser.find_element(:id, "password").send_keys password

end

Then(/^I click SignIn button on login page$/) do
  @browser.find_element(:id, "sign-in-button").click
end

Then(/^I will see invalid login or password error message$/) do
  element = @browser.find_element(:id, "actionerrors").find_element(:css, "span.error")
  expect(element.text).to be == "We do not recognize your username and/or password. Please try again."
end

Then(/^I will see password required error message$/) do
  expect(@browser.find_element(:id, "error-invalid-password").text).to be == "A password is required."
end

Then(/^I will see Username lenght error message$/) do
  expect(@browser.find_element(:id, "error-min-username").text).to be == "Your Username must be at least 6 characters long."
end

Then(/^I will see Password lenght error message$/) do
  expect(@browser.find_element(:id, "error-min-password").text).to be == "Your Password must be at least 10 characters long."
end