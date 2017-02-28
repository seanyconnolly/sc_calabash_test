require 'calabash-android/calabash_steps'

Given(/^the user is on the home screen$/) do
  start_test_server_in_background
end

Given(/^user taps on Chrome icon$/) do
  tap_when_element_exists(HomePage.icon_chrome)
end

When(/^user enters their own name$/) do
  WebViewActions.set_name
end

When(/^selects their favourite car$/) do
  WebViewActions.select_car
end

When(/^tap on send me your name$/) do
  tap_when_element_exists(WebViewPage.btn_send_name)
end

Then(/^your name and car is displayed$/) do
  WebViewActions.verify_name_and_car_shown
end