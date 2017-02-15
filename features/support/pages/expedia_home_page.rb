# require_relative '../modules/utilities'
# class ExpediaHomePage
#   include PageObject
#   include Utilities
#
#   page_url 'www.expedia.com'
#   link(:select_flight_tab, :id => 'tab-flight-tab')
#   label(:select_round_trip_flight, :id => 'flight-type-roundtrip-label')
#   text_field(:departure_airport, :id => 'flight-origin')
#   text_field(:arrival_airport, :id => 'flight-destination')
#   ul(:flight_results, :class => 'results')
#   text_field(:dep_date, :id => 'flight-departing')
#   text_field(:arr_date, :id => 'flight-returning')
#   button(:search_flight, :id => 'search-button')
#   links(:error_messages, :class => 'dateBeforeCurrentDateMessage')
#
#
#   def set_dep_airport city_name, airport_name
#     self.departure_airport = city_name
#     departure_airport_element.send_keys :end
#     select_airport_from_list airport_name
#   end
#
#   def set_arr_airport city_name, airport_name
#     self.arrival_airport = city_name
#     arrival_airport_element.send_keys :end
#     select_airport_from_list airport_name
#   end
#
#   def select_airport_from_list airport_name
#     flight_results_element.when_present.list_item_elements.each do |airport|
#       # p airport.text
#       if airport.text.include? airport_name
#         airport.click
#         break
#       end
#     end
#   end
#
#   def set_dep_date no_of_days
#     date = convert_time no_of_days.to_i
#     # @browser.text_field(:id => 'flight-departing').set date
#     self.dep_date = date
#   end
#
#   def set_arr_date no_of_days
#     date = convert_time no_of_days.to_i
#     # @browser.text_field(:id => 'flight-returning').set date
#     self.arr_date = date
#   end
#
#   # def verify_error_message error_message
#   #   error_messages_elements.each do |message|
#   #     p message.text
#   #     if message.text.include? error_message
#   #       break
#   #     else
#   #       fail "error message is different "
#   #     end
#   #   end
#   # end
#
#   def get_error_message
#     error_messages_elements.map do |error_msg|
#       error_msg.text
#     end
#   end
# end



