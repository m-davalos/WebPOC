Given(/^Application is up and running$/) do
  @driver.navigate.to 'http://www.mobiquityinc.com/'
  sleep 2.5
end

Then(/^I take a screenshot and save it to ~\/Screenshots$/) do
  save_screenshot_locally("MobTest_#{ENV['PLATFORM']}", @driver)
end

And(/^I search for "([^"]*)"$/) do |key|
  on(MobSite).search_icon_element.click
  sleep 5 if ENV['BROWSER'] == 'safari'
  on(MobSite).search_element.send_keys key
  on(MobSite).search_button_element.click
  sleep 2.5
end