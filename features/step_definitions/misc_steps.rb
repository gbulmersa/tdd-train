require 'selenium-webdriver'

Given(/^The user is on the page$/) do
  #pending # Write code here that turns the phrase above into concrete actions

  browser = Selenium::WebDriver.for :chrome, switches: %w[--ignore-certificate-errors --disable-gpu --disable-popup-blocking --disable-translate]
  browser.navigate.to "http://cnn.com"
  wait = Selenium::WebDriver::Wait.new(:timeout => 15)
  puts "Test Passed: Found the word Wyclef in an anchor tag" if wait.until {
    browser.find_element(:xpath => "//a[contains(.,'Wyclef')]").displayed?
}
  browser.quit

end

When(/^The GetRandom button is pressed$/) do
  #pending # Write code here that turns the phrase above into concrete actions
end

Then(/^A random number appears in the result box$/) do
  #pending # Write code here that turns the phrase above into concrete actions
end
