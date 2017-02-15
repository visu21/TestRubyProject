# Given(/^user is on Expedia Home Page$/) do
#   visit ExpediaHomePage
# end
#
# When(/^user select the round trip tab under the flight selection$/) do
#   on(ExpediaHomePage).select_flight_tab
#   on(ExpediaHomePage).select_round_trip_flight_element.click
# end
#
# And(/^user select (.*) airport for the city (.*) in the (Departure|Arrival) field$/) do |city_name, airport_name, dep_arr|
#   if dep_arr == 'Arrival'
#     on(ExpediaHomePage).set_arr_airport airport_name, city_name
#   else
#     on(ExpediaHomePage).set_dep_airport airport_name, city_name
#   end
# end
#
# # And(/^user select (.*) airport for the city (.*) in the Arrival field$/) do |city_name, airport_name|
# # end
#
# And(/^user searches for (past|feature) date flight$/) do |past_arr|
#   if past_arr == 'past'
#     on(ExpediaHomePage).set_dep_date -2
#     on(ExpediaHomePage).set_arr_date -2
#   else
#     on(ExpediaHomePage).set_dep_date 2
#     on(ExpediaHomePage).set_arr_date 2
#   end
#
# end
#
# And(/^user searches for the avilable flights$/) do
#   on(ExpediaHomePage).search_flight_element.click
#   sleep 5
# end
#
# Then(/^verify the "([^"]*)" message is displayed$/) do |error_message|
#   on(ExpediaHomePage).verify_error_message error_message
# end
#
# Then(/^verify the user gets the correct details for (.*)$/) do |arr_city|
#   on(ExpediaHomePageSearchResultPage).verify_search_result_are_correct? arr_city
# end
#
# Then(/^verify the error_message is displayed$/) do |table|
#   # table is a table.hashes.keys # => [:error_message, :dates]
#   table.hashes.each do |message|
#     p message['error_message']
#     # p message['dates']
#     p on(ExpediaHomePage).get_error_message
#   #   all_error_messages = on(ExpediaHomePage).get_error_message
#   # fail "#{all_error_messages} does not include #{message['error_message']} " unless all_error_messages.include? message['error_message']
#   end
# end
#
# And(/^user searches for blank data$/) do
#   on(ExpediaHomePage).search_flight_element.click
# end
#
# # Then(/^verify all four error_message is displayed$/) do |table|
# #   table.hashes.each do |message|
# #     p message['error_message']
# #     p on(ExpediaHomePage).get_error_message
# #     # if on(ExpediaHomePage).get_error_message.include? message['error_message']
# #     #   p 'pass'
# #     # else
# #     #   p 'fail'
# #     # end
# #     # four_error_messages = on(ExpediaHomePage).get_error_message
# #     # fail "no error messages matches with the original" unless four_error_messages.include? message['error_message']
# #   end
# # end