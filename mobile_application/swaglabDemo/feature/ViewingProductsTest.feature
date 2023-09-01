Feature: Viewing products Test

  Background:
    When I start and login with credential
        |username|password|
        |username|password|
  Scenario: Customer view product to buy
    Then I should see the products information to buy
  
  Scenario: Customer view product to buy by order
    When I change the order rule to view product
        |orderRule|
        |orderRule|
    Then I should see the products information to buy following order
        |name|price|
        |name|price|

  Scenario: Customer add products to cart
    When I add products to cart
        |product|
        |product|
    Then I should see list products in cart
        |product|
        |product|
    Scenario: Customer remove products from cart
    When I add products to cart
        |product|
        |product|
    And I remove products from cart
        |product|
        |product|
    Then I should see list products in cart
        |product|
        |product|