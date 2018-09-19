Feature: Browse inbox
    As a user 
    In order to able to see my emails
    I should be able to browse my inbox

    Background: User is Logged In with mail in inbox
        Given the following user is in database
        | email              | password   | name |
        | tore@example.com   | foobarbar  | Tore |
        | olof@example.com   | mypassword | Olof |
        And I should be logged in as "Tore"
        And I am on the landing page
    
        Scenario: As a user I should be able to goto the inbox and send an email
            Given I am on the landing page
            #And I click on the "Inbox" button
        
        



