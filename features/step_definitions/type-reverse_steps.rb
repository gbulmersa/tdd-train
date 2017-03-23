require_relative '.\util.rb'

browser = Util.load_page("http://23.23.241.33/tdd-train/rn.html")

Given(/^the user is using our text reversal application$/) do
  true
end

When(/^the user provides the text that they want to be reversed$/) do
  # Use find_element to get text input
  #input = Util.browser.find_element(:xpath => "//input[@type='text']")
  pending # blah
end

When(/^the user asks for text reversal$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the text that the user provided is reversed$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Util.clean_up(browser)