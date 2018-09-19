Feature: Browse inbox
    As a user 
    In order to able to use the service
    I should be able to send and receive messages

    Background: User is Logged in
        Given the following user is in database
        | email              | password   | name |
        | tore@example.com   | foobarbar  | Tore |
        | olof@example.com   | mypassword | Olof |
        And I should be logged in as "Tore"        
    
        Scenario: As a user I should be able to go to the inbox and send an email
            Given I am on the landing page
            And I click the "Inbox" button
            Then I should see my inbox
            And I click the "Compose" button
            And I select "Recipients" named "Tore"
            And I fill in "Subject" with "Hello to myself!"
            And I fill in "conversation_body" with "I am sending this message to myself to check out the service?"            
            And I click the "Send Message" button
            Then I should have a message in my inbox with the content "I am sending this message to myself to check out the service?"
        
        


        
        



