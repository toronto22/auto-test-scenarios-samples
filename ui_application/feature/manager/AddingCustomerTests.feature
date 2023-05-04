Feature: Adding Customer Tests

  Background:
    When I navigate to Add Customer page

  Scenario:  Manager Adds Customer With Valid Customer Information
    When I add a new customer
      | firstName | lastName | postCode |
      | firstName | lastName | postCode |
    Then It should be show the alert about customer is added
    And I can login successfully with new customer information

  Scenario Outline:  Manager Is Unable To Add Customer Without Mandatory Field
    When I add a new customer
      | firstName   | lastName   | postCode   |
      | <firstName> | <lastName> | <postCode> |
    Then Error message should be shown "Please fill out this field."

    Examples:
      | firstName | lastName | postCode |
      |           | lastName | postCode |
      | firstName |          | postCode |
      | firstName | lastName |          |
