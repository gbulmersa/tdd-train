require 'selenium-webdriver'
require 'rubygems'
require 'headless'
require 'rbconfig'

# http://stackoverflow.com/questions/4871309/what-is-the-correct-way-to-detect-if-ruby-is-running-on-windows
is_windows = (RbConfig::CONFIG['host_os'] =~ /mswin|mingw|cygwin/)

Given(/^The user is on the page$/) do
  puts "is_windows: #{is_windows}"
  puts "Creating headless..."
  if !is_windows then
	headless = Headless.new
	headless.start
  end
  begin
	  puts "Creating firefox driver..."
	  browser = Selenium::WebDriver.for :firefox

	  puts "Navigating to rn.html..."
	  browser.navigate.to "http://23.23.241.33/tdd-train/rn.html"
	  wait = Selenium::WebDriver::Wait.new(:timeout => 7)
	  
	  puts "Calling find_element //button..."
	  browser.find_element(:xpath => "//button").click
	  testResult = (browser.find_element(:xpath => "//input[@type='text']").text != "")
  ensure
	browser.quit
	if !is_windows then
		headless.destroy
	end
	testResult
  end
end

When(/^The GetRandom button is pressed$/) do
  # pending
end

Then(/^A random number appears in the result box$/) do
  # pending
end
