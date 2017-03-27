require_relative '.\util.rb'

browser = Util.load_page("http://23.23.241.33/tdd-train/tr.html")

Given(/^the user is using our text reversal application$/) do
  true
end

When(/^the user provides the text that they want to be reversed$/) do
  # Use find_element to get text input
  testResult = (browser.find_element(:xpath => "//input[@id='testtext']").text = "my text")
  testResult
end

When(/^the user asks for text reversal$/) do
   btnMe=	browser.find_element(:xpath => "//button").click
   btnMe
end

Then(/^the text that the user provided is reversed$/) do
  testResult = (browser.find_element(:xpath => "//input[@id='testtext']").text == "txet ym")
  testResult

end

#Util.clean_up(browser)