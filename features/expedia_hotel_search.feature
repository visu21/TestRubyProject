Feature: Expedia Hotel Search

  Background:
    Given user is on Expedia Home Page
    When user select hotels selection


##  Imperative
  @1
#  Scenario: Verify the user gets an error message when searching for past date flights
#    And  user select Columbus, OH airport for the city columbus in the Going to field
#    And  user searches for past date hotels
##    And  user searches for past date flight in the Departure field
##    And  user searches for past date flight in the Arrival field
#    And  user searches for the avilable hotels
#    Then The start or end date is prior to the current date. message is displayed
#
#
##  Declarative
  @2
  Scenario: Verify the user gets an error message when searching for past date hotels
    When user select Columbus, OH airport for the city columbus in the Going to field
    Then verify the user is warned with a message
#
##

#  @3
  Scenario Outline: Verify the user gets the avaliable hotels near the city searched
    And  user select <landmark_name> airport for the city <city_name> in the Going to field
    And  user searches for feature date hotels
#    And  user enter <dep_date> in the Departure field
#    And  user enter <arr_date> in the Arrival field
    And  user searches for the avilable hotels
    Then verify the user gets the correct details for <city_name>

    Examples:
      | city_name | landmark_name |
      | Columbus  | Columbus, OH  |
      | Cleveland | Cleveland, OH |
##
#
# # Inline Table - 1
  @5
  Scenario: verify the user gets an error messages when searching for hotel with no data
    And  user searches for past date hotels
    And  user searches for the avilable hotels
    Then verify the error_message is displayed
      | error_message                                        | dates |
      | The start or end date is prior to the current date.. | 56465 |
#
#  Scenario: verify the flight search results are sorted by price

# Inline Table - 2
#  @5
#  Scenario: verify the user gets an all 4 error messages when searching hotels with no data in any of the fields
##    And  user searches for past date flight
##    And  user searches for blank data
#    Then verify the error_message is displayed
#      | error_message                                            |
#      | Please complete the highlighted destination field below. |
#      | Please complete the highlighted date field(s) below.     |
