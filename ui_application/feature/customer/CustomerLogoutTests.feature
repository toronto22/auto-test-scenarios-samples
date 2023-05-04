Feature: Customer Logout Tests

  Background:
    When I login with "Harry Potter" account

  Scenario:  Customer Log Out Successfully From Account Page
    When I navigate to Account Page
    When I am logged out of application
    Then The Customer Login page is active

  Scenario:  Customer Log Out Successfully From Transaction Page
    When I Navigate to Customer Transaction Page
    When I am logged out of application
    Then The Customer Login page is active