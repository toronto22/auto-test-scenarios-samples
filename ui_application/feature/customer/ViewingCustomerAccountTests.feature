Feature: Viewing Customer Account Tests

  Background:
    When I login with "Harry Potter" account

  Scenario:  Customer Views Account Information Details
    Then The Customer Information should be shown
      | customerName | accountNumber | balance | currency |
      | 1            | 1             | 1       | 1        |

  Scenario:  Customer Views Account Information Details
    When I select the account "Dollar"
    Then The Customer Information should be shown
      | customerName | accountNumber | balance | currency |
      | 1            | 1             | 1       | 1        |