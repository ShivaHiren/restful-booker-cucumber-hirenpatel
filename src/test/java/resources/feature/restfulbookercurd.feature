Feature: Restful Booker
  As a user I want to test Restful Booker HTTP Operations

  Scenario Outline: Check End to End CURD operations
    When I send POST request to create a new booking with firstName"<firstName>", lastName"<lastName>", totalprice "<totalprice>", depositpaid "<depositpaid>", checkin "<checkin>", checkout"<checkout>" additionalneeds "<additionalneeds>"
    Then I verfiy that new booking is created by id
    And I send a Put request with  firstName"<firstName>", lastName"<lastName>", totalprice "<totalprice>", depositpaid "<depositpaid>", checkin "<checkin>", checkout"<checkout>" additionalneeds "<additionalneeds>"
    And The totalprice "<totalprice>" is successfully updated
    And I send delete booking by id
    Then The booking is successfully deleted from the record
    Examples:
      | firstName | lastName | totalprice | depositpaid | checkin    | checkout   | additionalneeds |
      | Jhon      | Wick     | 400        | yes         | 2023-05-01 | 2023-05-10 | Lunch           |
      | John      | Patel    | 200        | No          | 2023-11-10 | 2023-12-10 | Iron            |



