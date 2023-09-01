Feature: Viewing Cart Test

  Background:
    When I start and login with credential
        |username|password|
        |username|password|

  Scenario: Customer view there card after select products to purchase
    When I add products to my cart
        |product|
        |product|
    And I navigate to my cart
    Then I should see my selected products 
        |product|
        |product|

    Scenario: Customer remove products to buy in there cart
    When I add products to my cart
        |product|
        |product|
    And I navigate to my cart
    And I remove products from my cart
        |product|
        |product|
    Then I should see my selected products 
        |product|
        |product|

  Scenario: Customer continue to buy more item
    When I add products to my cart
        |product|
        |product|
    And I navigate to my cart
    And I choose to continue shopping
    Then I should see the Products page
