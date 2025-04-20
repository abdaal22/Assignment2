Feature: User Registration
  As a new user
  I want to register on Basketball England
  So that I can access member-only features

  Scenario: Create user – everything goes as expected and an account is created
    Given I am on the registration page using "firefox"
    When I enter valid registration details
    And I submit the form
    Then I should see a confirmation message

  Scenario: Create user – last name missing
    Given I am on the registration page using "firefox"
    When I enter valid details except last name
    And I submit the form
    Then I should see an error message about the last name

  Scenario: Create user – password does not match
    Given I am on the registration page using "firefox"
    When I enter mismatching passwords
    And I submit the form
    Then I should see an error message about password mismatch

  Scenario: Create user – terms and conditions are not approved
    Given I am on the registration page using "firefox"
    When I enter valid details but do not accept terms
    And I submit the form
    Then I should see an error message about terms and conditions
