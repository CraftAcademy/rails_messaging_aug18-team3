Feature: Send to multiple people
    As a user 
    In order to save time
    I would like to be able to send messages to multiple users at once

    Background: User is Logged in and sends message
        Given the following user is in database
        | email              | password   | name |
        | tore@example.com   | foobarbar  | Tore |
        | olof@example.com   | mypassword | Olof |
        | gustav@example.com | mypassword | Gustav |
        And I should be logged in as "Olof"
    
    @javascript
    Scenario: As a user I want to send a message to multiple users
        Given I am on the landing page
        And I click on the "Inbox" button
        And I click on the "Compose" button
        