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
    And I fill in "Email" with "anyone@example.com"
    And I fill in "Password" with "foobarbar"
    And I click the "Log in" button
    Then I should see a message saying "Signed in successfully."