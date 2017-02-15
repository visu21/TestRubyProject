class ExpediaHotelPageSearchResultPage

  include PageObject

  header(:search_result_header, :id=>'hotelResultTitle')

  def verify_search_result city_name
    if search_result_header_element.text.include? city_name
      p "search reasult matched with user search #{city_name}"
    else
      fail 'search result does not match'
    end
  end












end