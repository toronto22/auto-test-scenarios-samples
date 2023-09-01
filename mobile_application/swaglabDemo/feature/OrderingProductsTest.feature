Feature: Ordering Products Test

  Background:
    When I start and login with credential
        |username|password|
        |username|password|

  Scenario: Ordering products successfully
    When I add products to my cart
        |product|
        |product|
    And I finish checkout products in my cart
        |firstName|lastName|ZipCode|
        |firstName|lastName|ZipCode|
    Then I checkout my products successfully