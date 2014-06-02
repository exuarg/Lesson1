require 'cucumber'
require 'watir-webdriver'
require 'test/unit'
include Test::Unit::Assertions

Given /^the input "([^"]*)"$/ do |input|
  @input = input
end

When /^the calculator is run$/ do
  @output = `ruby calc.rb #{@input}` 
  raise('Command failed!') unless $?.success?
end

Then /^the output should be "([^"]*)"$/ do |expected_output|
  @output.should == expected_output
end

Given(/^user goes to guitarcenter/) do
  @Browser= Watir::Browser.new :ff
  @Browser.goto "guitarcenter.com/Home"
end

Then(/^the web side loads$/) do
  @Browser.div(:id=>"headerContentContainer").wait_until_present
  logo = @Browser.div(:id=>"headerContentContainer").exists?
  assert(logo == true)
  #logo=@Browser.div :class => 'gclogo'
  #assert(logo==true)
  @Browser.close
end