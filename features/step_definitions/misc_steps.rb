require 'selenium-webdriver'
require 'rubygems'
require 'headless'
require 'rbconfig'
require_relative '.\util.rb'



Given(/^The user is on the page$/) do
  browser = Util.load_page("http://23.23.241.33/tdd-train/rn.html")
  puts "Calling find_element //button..."
	browser.find_element(:xpath => "//button").click
	testResult = (browser.find_element(:xpath => "//input[@type='text']").text != "")
  Util.clean_up(browser)
	# return testResult
end

When(/^The GetRandom button is pressed$/) do
  # pending
end

Then(/^A random number appears in the result box$/) do
  # pending
end

