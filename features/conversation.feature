Feature: Conversation
    As a user 
    in order to have a conversation with other people 
    I should be able to send and receive message from others

    Background: User is Logged in and sends message
        Given the following user is in database
        | email              | password   | name |
        | tore@example.com   | foobarbar  | Tore |
        | olof@example.com   | mypassword | Olof |
        
        Given these emails exist
        | sender   | receiver   | subject  | body  |
        | Tore     | Olof       | Hello    | World |
        
        Given I should be logged in as "Olof"
    
    Scenario: As a user I should have a message in my mailbox
        Given I am on the landing page
        And I click on the "Inbox" button
        Then I should have "1" new messages
        And I should see a message saying "Hello"
        And I should see a message saying "World"
        
    Scenario: As a user I should be able to delete email
        Given I am on the landing page
        And I click on the "Inbox" button
        And I click on the "View" button
        And I click on the "Move to trash" button
        Then I should have "0" new messages
    
    Scenario: As a user I should be able to reply to a message
        Given I am on the landing page
        And I click on the "Inbox" button
        And I click on the "View" button
        And I fill in "message_body" with "Hello back!"
        And I click on the "Reply" button
        And I should see a message saying "Your reply message was successfully sent!"

        