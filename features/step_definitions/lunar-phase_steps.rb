
Given(/^the user types a date of (\d+)\/(\d+)\/(\d+)$/) do |arg1, arg2, arg3|
    puts "hello"
    inputTextbox = browser.find_element(:xpath => "//input[@id='testtext']")
    inputTextbox.send_keys(testReverse)
    be_false
    #pending # Write code here that turns the phrase above into concrete actions
end

Given(/^the user asks for the lunar phase$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the lunar phase is First Quater$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the lunar phase is Full Moon$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the lunar phase is Third Quarter$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the lunar phase is New Moon$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^the user provides a (\d+)$/) do |arg1|
    puts "dog"
    be_true 
    #pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the user is notified that the date provided is invalid$/) do
  pending # Write code here that turns the phrase above into concrete actions
end