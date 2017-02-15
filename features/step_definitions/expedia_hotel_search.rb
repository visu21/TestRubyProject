Given(/^user is on Expedia Home Page$/) do
  visit ExpediaHotelPage
end

When(/^user select hotels selection$/) do
  on(ExpediaHotelPage).hotel_tab_element.click
end

And(/^user select (.*) airport for the city (.*) in the Going to field$/) do |landmark_name, city_name|
  on(ExpediaHotelPage).set_des_hotel landmark_name, city_name
end

And(/^user searches for (past|feature) date hotels$/) do |past_feature|
  if past_feature == 'past'
    on(ExpediaHotelPage).set_checkin_date -2
    on(ExpediaHotelPage).set_checkout_date -2
  else
    on(ExpediaHotelPage).set_checkin_date 2
    on(ExpediaHotelPage).set_checkout_date 2
  end
end

And(/^user searches for the avilable hotels$/) do
  on(ExpediaHotelPage).search_button_element.click
end

Then(/^The start or end date is prior to the current date\. message is displayed$/) do |compair_msg|
  on(ExpediaHotelPage).check_error_msg compair_msg
end

Then(/^verify the user gets the correct details for (.*)$/) do |city_name|
  on(ExpediaHotelPageSearchResultPage).verify_search_result city_name
end

Then(/^verify the error_message is displayed$/) do |table|
  # table is a table.hashes.keys # => [:error_message, :dates]
  table.hashes.each do|message|
    message['error_message']
    # p message['dates']
      p on(ExpediaHotelPage).get_all_errors_msg

      # all_error_messages = on(ExpediaHotelPage).get_all_errors_msg
      # fail "#{all_error_messages} does not include #{message['error_message']} " unless all_error_messages.include? message['error_message']
    end
  end


Then(/^verify the user is warned with a message$/) do
  all_error_msg = on(ExpediaHotelPage).get_all_errors_msg
  expect(all_error_msg).should include 'The start or end date is prior to the current date.'
end