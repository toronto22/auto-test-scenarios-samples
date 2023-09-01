Feature: Login Tests

  Scenario: Login Successfully With Valid Credential
    When I start and login with credential
        |username|password|
        |username|password|
    Then I am logged in successfully

  Scenario: Login Successfully With Invalid Credential
    When I Login with credential
        |username|password|
        |username|password|
    Then I should see the login error message