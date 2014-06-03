require 'watir-webdriver'
require 'cucumber'
require 'test/unit/assertions'
include Test::Unit::Assertions
require 'rspec'

After do |scenario|
  @Browser.close
end