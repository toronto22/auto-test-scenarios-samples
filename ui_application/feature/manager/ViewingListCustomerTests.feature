Feature: Viewing List Customer Tests

  Background:
    When Navigate to List Customer Page

  Scenario:  Manager view list customer table
    Then The list customer table should be shown "10" items

  Scenario: Manager create a new customer
    When I navigate to Add Customer page
    And I add a new customer
      | firstName | lastName | postCode |
      | firstName | lastName | postCode |
    And I navigate to Open Account Page
    And I open a new account
      | customerName | currency |
      | customerName | currency |
    Then The customer should be exist in list customers