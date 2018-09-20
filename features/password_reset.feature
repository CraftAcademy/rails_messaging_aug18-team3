Feature: Password reset
    As a user 
    If I lose my password
    I would like to be able to request a password reset

    Background: User is Logged in and sends message
        Given the following user is in database
        | email              | password   | name |
        | tore@example.com   | foobarbar  | Tore |        
    
    Scenario: As a user I should be able to request a password reset
      Given I am on the landing page
      And I click on the "Login" button
      And I click on the "Forgot your password?" button
      And I fill in "Email" with "tore@example.com"
      And I click on the "Send me reset password instructions" button
      And I follow the password reset link
      And I fill in "New password" with "newpassword"
      And I fill in "Confirm new password" with "newpassword"
      And I click on the "Change my password" button
      Then I should see a message saying "Your password has been changed successfully. You are now signed in."




     