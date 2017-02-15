#Feature: Expedia Flight Search
#
#  Background:
#    Given user is on Expedia Home Page
#    When user select the round trip tab under the flight selection
#
#
###  Imperative
#  Scenario: Verify the user gets an error message when searching for past date flights
#    And  user select Columbus, OH airport for the city columbus in the Departure field
#    And  user select Cleveland, OH airport for the city cleveland in the Arrival field
#    And  user searches for past date flight
##    And  user searches for past date flight in the Departure field
##    And  user searches for past date flight in the Arrival field
#    And  user searches for the avilable flights
#    Then verify the Departing date is in the past. Please enter a valid departing date. message is displayed
#
#
##  Declarative
#  Scenario: Verify the user gets an error message when searching for past date flights
#    Then verify the user is warned with a message
#
##
#  Scenario Outline: Verify the user gets the avaliable flights for the airport searched
#    And  user select <dep_airport> airport for the city <dep_city> in the Departure field
#    And  user select <arr_airport> airport for the city <arr_city> in the Arrival field
#    And user searches for feature date flight
##    And  user enter <dep_date> in the Departure field
##    And  user enter <arr_date> in the Arrival field
#    And  user searches for the avilable flights
#    Then verify the user gets the correct details for <arr_city>
#
#    Examples:
#      | dep_city | arr_city | dep_airport  | arr_airport |
#      | columbus | Atlanta  | Columbus, OH | Atlanta, GA |
#      | columbus | Chicago  | Columbus, OH | Chicago, IL |
##
#
# # Inline Table - 1
#  Scenario: verify the user gets an error messages when searching for flight with no data
#    And  user searches for past date flight
#    And  user searches for the avilable flights
#    Then verify the error_message is displayed
#      | error_message                                                       | dates |
#      | Departing date is in the past. Please enter a valid departing date. | 56465 |
#      | Returning date is in the past. Please enter a valid returning date. | 21335 |
#
#  Scenario: verify the flight search results are sorted by price
#
# Inline Table - 2
#  Scenario: verify the user gets an all 4 error messages when searching for flight with no data in any of the fields
##    And  user searches for past date flight
#    And  user searches for blank data
#    Then verify all four error_message is displayed
#      | error_message                                                  |
#      | Please complete the highlighted origin field below.            |
#      | Please complete the highlighted destination field below.       |
#      | Please complete the highlighted departing date field(s) below. |
#      | Please complete the highlighted returning date field(s) below. |