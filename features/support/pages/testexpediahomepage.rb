require_relative '../modules/utilities'
class TestExpediaHomePage
  include PageObject
  include Utilities

  page_url 'www.expedia.com'

  link(:flight_tab, :id => 'tab-flight-tab')
  label(:round_trip_lable, :id => 'flight-type-roundtrip-label')
  text_field(:dep_textbox, :id => 'flight-origin')
  text_field(:arr_textbox, :id => 'flight-destination')
  ul(:airport_list, :class => 'results')
  text_field(:dep_date, :id=>'flight-departing')
  text_field(:arr_date, :id=>'flight-returning')
  button(:search_button, :id=>'search-button')
  links(:error_messages, :id=>'dateBeforeCurrentDateMessage')


  def set_dep_airport airport_name, city_name
    self.dep_textbox = city_name
    dep_textbox_element.send_keys :end
    select_airport_from_list airport_name
  end

  def set_arr_airport airport_name, city_name
    self.arr_textbox = city_name
    arr_textbox_element.send_keys :end
    select_airport_from_list airport_name
  end

  def select_airport_from_list airport_name
    airport_list_element.when_present.list_item_elements.each do |airport|
      p airport.text
      if airport.text.include? airport_name
        airport.click
        break
      end
    end
  end

  def set_dep_date no_of_days
    date = convert_time no_of_days.to_i
    self.dep_date = date
  end

  def set_arr_date no_of_days
    date = convert_time no_of_days.to_i
    self.arr_date = date
  end

  def verify_error_msg error_msg
    error_messages_elements.each do |msg|
      p msg.text
      if msg.text.include? error_msg
        break
      else
        fail 'error msg is different'
      end
    end
  end



end