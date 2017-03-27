require_relative '.\util.rb'

browser = Util.load_page("http://23.23.241.33/tdd-train/tr.html")
testReverse = "Jason"

Given(/^the user is using our text reversal application$/) do
  true
end

When(/^the user provides the text that they want to be reversed$/) do
  # Use find_element to get text input
 inputTextbox = browser.find_element(:xpath => "//input[@id='testtext']")
 inputTextbox.send_keys(testReverse)
     
end

When(/^the user asks for text reversal$/) do
   btnTest=	browser.find_element(:xpath => "//button[@id='btnNow']").click
   btnTest
end

Then(/^the text that the user provided is reversed$/) do
  wait = Selenium::WebDriver::Wait.new(:timeout => 7)
  testResult =  wait.until{
    element = browser.find_element(:id, "testtext")
    element if element.displayed?
  }
  puts testResult.attribute("value")
  puts (testResult.attribute("value") == testReverse.reverse!)
  (testResult.attribute("value") == testReverse.reverse!)
end

#Util.clean_up(browser)