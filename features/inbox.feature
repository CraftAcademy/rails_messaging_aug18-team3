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
    
        Scenario: As a user I should be able to go to the inbox and send an email
            Given I am on the landing page
            And I click the "Inbox" button
            Then I should see my inbox
            And I click the "Compose" button
            And I select "Recipients" named "Tore"
            And I fill in "Subject" with "Hello Tore!"
            #And I fill in "Message" with "How are you Tore?"
            And I click the "Send Message" button


        
        



