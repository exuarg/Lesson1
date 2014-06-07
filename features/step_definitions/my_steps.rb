Given(/^user goes to guitarcenter/) do
  @Browser= Watir::Browser.new :ff
  @Browser.goto "guitarcenter.com/Home"
end

Then(/^the web side loads$/) do
  @Browser.div(:id=>"headerContentContainer").wait_until_present
  logo = @Browser.div(:id=>"headerContentContainer").exists?
  assert(logo == true)
end

Given(/^someone goes to guitarcenters website$/) do
  @Browser = Watir::Browser.new :ff
  @Browser.goto "www.guitarcenter.com"
end

When(/^they enter a search term of "([^"]*)"$/) do |search_value|
@Browser.div(:id=> "headerContentContainer").wait_until_present
  @Browser.text_field(:id=> "header-search-input").set "#{search_value}"
  @Browser.input(:id=>"SearchSubmit").click
end

Then(/^they get results about "([^"]*)"$/) do |search_results|
  sresults = @Browser.span(:class=>"grid-product-name").text.include? search_results
  assert(sresults == true)
end


Given(/^someone goes guitarcenter website$/) do
  @Browser = Watir::Browser.new :ff
  @Browser.goto "guitarcenter.com"
end

When(/^click on log in$/) do
  @Browser.div(:id=> "headerContentContainer").wait_until_present
  @Browser.link(:text=> "Login").click
end

Then(/^they get redirected to log in page$/) do
  #@Browser.div(:class=> "gcLogo").wait_until_present
 sresults = @Browser.label(:for=>"Email").exists?
  assert(sresults == true)
  sresults = @Browser.label(:for=>"Password").exists?
  assert(sresults == true)
end


Given(/^someone goes to guitarcenter website$/) do
  @Browser = Watir::Browser.new :ff
  @Browser.goto "guitarcenter.com"
end

When(/^click on store finder a pop up window opens to input zipcode, you input "([^"]*)"$/) do |zipcode|
  @Browser.link(:text=>"Store Finder").click
  @Browser.text_field(:id=>"sszipCode").wait_until_present
  @Browser.text_field(:id=>"sszipCode").set "#{zipcode}"
  @Browser.input(:id=>"storeSearchButton").click
end

Then(/^you get results of stores by distance starting with the closest$/) do
  store_location = @Browser.ul(:id=>"searchResultList").div.a.text
  puts store_location


  @Browser.link(:text=>"Make My Home Store").wait_until_present
  @Browser.link(:text=>"(San Bernardino (6.75 mi))").exists?
end