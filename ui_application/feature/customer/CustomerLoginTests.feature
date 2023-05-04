Feature: Customer Login Tests

  Background:
    When I Navigate to Login Page

  Scenario: The Login button is hidden in default
    Then The Login button is hidden

  Scenario: The Login Button Is Hidden When Deselect Your Name
    When I Select Your Name with "Harry Potter" value
    And I Select Your Name with "---Your Name---" value
    Then The Login button is displayed

  Scenario: The Login Button Is Shown When Select Your Name
    When I Select Your Name with "Harry Potter" value
    Then The Login button is hidden

  Scenario: Login Successfully With Valid Credential
    When I Login with your name is "Harry Potter"
    Then The Customer is logged in successfully