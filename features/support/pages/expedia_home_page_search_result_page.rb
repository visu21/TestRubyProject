class ExpediaHomePageSearchResultPage
  include PageObject


  span(:search_results_header,:class=>'title-city-text')


  def verify_search_result_are_correct? arr_city
    # if search_result_header.element.text.eql? "Select your departure to #{arr_city}"
    if search_results_header_element.text.eql? "Select your departure to #{arr_city}"
      p 'search result match'
    else
      fail "search result does not include departure city #{arr_city}"
    end
  end





end