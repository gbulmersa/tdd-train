require 'selenium-webdriver'
require 'rubygems'
 

Given(/^The user is on the page$/) do
  #pending # Write code here that turns the phrase above into concrete actions

  browser = Selenium::WebDriver.for :chrome, switches: %w[--ignore-certificate-errors --disable-gpu --disable-popup-blocking --disable-translate]
  browser.navigate.to "http://tdd-train.com/tdd-train/rn.html"
  wait = Selenium::WebDriver::Wait.new(:timeout => 7)
  #puts "Test Passed: Found the word random friend in an anchor tag" if wait.until {
    #browser.find_element(:xpath => "//h1[contains(.,'random friend')]").displayed?
    browser.find_element(:xpath => "//button").click
    puts "Test Passed:" if wait.until {
    puts browser.find_element(:xpath => "//input[@type='text']").value
    # browser.text_field(:id=> "result").value 
    }
  browser.quit

end

When(/^The GetRandom button is pressed$/) do
  #pending # Write code here that turns the phrase above into concrete actions
end

Then(/^A random number appears in the result box$/) do
  #pending # Write code here that turns the phrase above into concrete actions
end
