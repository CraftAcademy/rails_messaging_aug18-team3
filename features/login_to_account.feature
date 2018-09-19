Feature: Login to account
  As a user 
  In order to access my account 
  I would like to be able to log in

  Background: 
  Given the following user is in database
    | email              | password  | name   |
    | anyone@example.com | foobarbar | Anyone |  

    Scenario: As a user I would like to login to my account
    Given I am on the landing page
    When I click on the "Login" button
    Then I should be on the login form
    When I fill in "Email" with "anyone@example.com"
    And I fill in "Password" with "foobarbar"
    When I click the "Log in" button
    Then I should be on the landing page
    And I should see a message saying "Signed in successfully."