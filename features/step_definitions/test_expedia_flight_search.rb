# Given(/^user is on Expedia Home Page$/) do
#   visit TestExpediaHomePage
# end
#
# When(/^user select the round trip tab under the flight selection$/) do
#   on(TestExpediaHomePage).flight_tab_element.click
#   on(TestExpediaHomePage).round_trip_lable_element.click
# end
#
# And(/^user select (.*) airport for the city (.*) in the (Departure|Arrival) field$/) do |airport_name, city_name, dep_arr|
#   if dep_arr == 'Arrival'
#     on(TestExpediaHomePage).set_arr_airport airport_name, city_name
#   else
#     on(TestExpediaHomePage).set_dep_airport airport_name, city_name
#   end
# end
#
# And(/^user searches for (past|feature) date flight$/) do |past_feature|
#   if past_feature == 'past'
#     on(TestExpediaHomePage).set_dep_date -3
#     on(TestExpediaHomePage).set_arr_date -3
#   else
#     on(TestExpediaHomePage).set_dep_date 5
#     on(TestExpediaHomePage).set_arr_date 5
#   end
# end
#
# And(/^user searches for the avilable flights$/) do
#   on(TestExpediaHomePage).search_button_element.click
# end
#
# Then(/^verify the (.*) message is displayed$/) do |error_msg|
#   on(TestExpediaHomePage).verify_error_msg error_msg
# end
