Feature: Conversation
    As a user 
    in order to have a conversation with other people 
    I should be able to send and receive message from others

    Background: User is Logged in
        Given the following user is in database
        | email              | password   | name |
        | tore@example.com   | foobarbar  | Tore |
        | olof@example.com   | mypassword | Olof |
    
    Scenario: As a user I should be able to send and receive messages to and from others
        Given I should be logged in as "Tore"
        And I am on the landing page
        And I send a mail to "Olof"
        And I click on the "Logout" button
        Given I should be logged in as "Olof"
        And I am on the landing page
        And I click on the "Inbox" button
        Then I should have "1" new messages
        And I click on the "View" button
        And I click on the "Move to trash" button
        Then I should have "0" new messages

        