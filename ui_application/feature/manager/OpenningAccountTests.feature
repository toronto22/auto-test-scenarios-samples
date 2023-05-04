Feature: Opening Account Tests

  Background:
    When I navigate to Open Account Page

  Scenario:  Manager open account for the customer
    When I open a new account
      | customerName | currency |
      | customerName | currency |
    Then The account is opened successfully
    Then I can see the new account infomation

  Scenario Outline:  Manager open account with empty mandatory field
    When I open a new account
      | customerName   | currency   |
      | <customerName> | <currency> |
    Then The error message should be shown "Please select an item in the list."
    Examples:
      | customerName | currency |
      |              | currency |
      | customerName |          |
