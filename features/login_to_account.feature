Feature: Login to account
  As a user 
  In order to access my account 
  I would like to be able to log in

  Background: 
  Given the following user is in database
  | email | password | name |
  | "bob@example.com"| "foobar" |"Bob"|
  

    Scenario: As a user I would like to login to my account
    Given I am on the landing page
    When I click on the "Login" button
    Then I fill in "Email" with "bob@example.com"
    And I fill in "Password" with "foobar"
    When I click "Log in"
    Then I should be on the landing page
    And I should see a message saying "Signed in successfully"