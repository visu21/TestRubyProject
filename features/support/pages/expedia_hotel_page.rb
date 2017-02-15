require_relative '../modules/utilities'
class ExpediaHotelPage
  include PageObject
  include Utilities


  page_url 'www.expedia.com'

  link(:hotel_tab, :id => 'tab-hotel-tab')
  text_field(:des_name_textbox, :id => 'hotel-destination')
  ul(:des_dropdown_list, :class => 'results')
  text_field(:checkin_date, :id => 'hotel-checkin')
  text_field(:checkout_date, :id => 'hotel-checkout')
  button(:search_button, :id => 'search-button')
  link(:error_msg0, :text => 'The start or end date is prior to the current date.')
  link(:error_msg1, :text => 'Please complete the highlighted destination field below.')
  link(:error_msg, :class => 'dateBeforeCurrentDateMessage')
  div(:div_class, :class=>'alert-message')



  def set_des_hotel landmark_name, city_name
    self.des_name_textbox = city_name
    des_name_textbox_element.send_keys :end
    select_des_from_dropdown landmark_name
  end

  def select_des_from_dropdown landmark_name
    des_dropdown_list_element.when_present.list_item_elements.each do |des_list|
      p des_list.text
      if des_list.text.include? landmark_name
        des_list.click
        break
      end
    end
  end

  def set_checkin_date no_of_days
    date = convert_time no_of_days
    self.checkin_date = date
  end

  def set_checkout_date no_of_days
    date = convert_time no_of_days
    self.checkout_date = date
  end

  def check_error_msg compair_msg
    error_msg_element.each do |msg|
      if msg.text.include? compair_msg
        break
      else
        fail 'errors msges are different then listed'
      end
    end
  end

  def get_all_errors_msg
   error_msg_elements.map do |error|
   p error.text
   end
  end
  #  def get_all_errors_msg
  #    # @browser.div(:class=>'alert-message').link(:text => 'The start or end date is prior to the current date.').exists?
  #    # div_class_element.error_msg_element.exists?
  #    div_class_element.unordered_list_element.list_item_element.link_element.map do |error|
  #      error.text
  #      # div_class_element.map do |error|
  #      # error.text
  #    end
  #  end
  end

  # def check_all_msg
  #   div_class_element.unordered_list_element.list_item_element.text
  # end

