require 'watir-webdriver'
require 'cucumber'
require 'test/unit/assertions'
include Test::Unit::Assertions



def browser_name
  (ENV['browser'] ||= 'firefox').downcase.to_sym
end

Before do |scenario|
    @Browser =  Watir::Browser.new browser_name
end

After do |scenario|
  @Browser.close
end