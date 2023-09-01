Feature: Logout Tests

  Background:
    When I start and login with credential
        |username|password|
        |username|password|

  Scenario: Customer logout successfully
    When I logout of the system
    Then I am logged out successfully