Feature: Customer Transactions Tests

  Background:
   When I Login with "Harry Potter" account

  Scenario: Customer deposits money with valid amount
    When I deposit money with the amount is "123"
    Then My balance should be "111"
    And The Last customer transaction should be shown correctly
      | amount | depositType |
      | 1      | a           |

  Scenario: Customer is unable to withdraw the money that exceed the balance
    When I withdraw money with the amount is "123"
    Then The withdraw message should be shown "Transaction Failed. You can not withdraw amount more than the balance."
    Then My balance should be "111"

  Scenario: Customer withdraws money with valid amount
    When I deposit money with the amount is "123"
    When I withdraw money with the amount is "123"
    Then The withdraw message should be shown "Transaction successful"
    And My balance should be "111"
    And The last customer transaction is shown correctly
      | amount | depositType |
      | 1      | a           |

  Scenario: Customer resets the customer transactions
    When I deposit money with the amount is "123"
    And I withdraw money with the amount is "123"
    And I reset my transactions
    Then The transactions list should be empty