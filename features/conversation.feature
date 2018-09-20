Feature: Conversation
    As a user 
    in order to have a conversation with other people 
    I should be able to send and receive message from others

    Background: User is Logged in
        Given the following user is in database
        | email              | password   | name |
        | tore@example.com   | foobarbar  | Tore |
        | olof@example.com   | mypassword | Olof |
        And I should be logged in as "Tore" 
    
    Scenario: As a user I should be able to send and receive message from others
        Given I am on the landing page
        And I click on the "Inbox" button
        And I click on the "Compose" button
        And I select "Recipients" named "Olof"
        And I fill in "Subject" with "Hello to Olof!"
        And I fill in "conversation_body" with "Hello"            
        And I click on the "Send Message" button
        And I click on the "Logout" button
        Given I should be logged in as "Olof"
        