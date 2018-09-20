Feature: Signup to an account
  As a new user 
  In order to be able to access the app 
  I should be able to signup to an account

  Scenario: As a user I would like to signup to an account
    Given I am on the landing page
    When I click on the "Sign up" button
    And I fill in "Name" with "Bob"
    And I fill in "Email" with "bob@example.com"
    And I fill in "Password" with "mypassword"
    And I fill in "Password confirmation" with "mypassword"
    And I click on the "Create" button
    Then I should be on the landing page
    And I should see a message saying "Welcome! You have signed up successfully."


