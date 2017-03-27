require_relative '.\util.rb'

browser = Util.load_page("http://23.23.241.33/tdd-train/tr.html")

Given(/^the user is using our text reversal application$/) do
  true
end

When(/^the user provides the text that they want to be reversed$/) do
  # Use find_element to get text input
 inputTextbox = browser.find_element(:xpath => "//input[@id='testtext']")
 inputTextbox.send_keys("silvian")
     
end

When(/^the user asks for text reversal$/) do
   btnTest=	browser.find_element(:xpath => "//button[@id='btnNow']").click
   btnTest
end

Then(/^the text that the user provided is reversed$/) do
  testResult = (browser.find_element(:xpath => "//input[@id='testtext']").get_text == "naivlis")
 
testResult

end

#Util.clean_up(browser)