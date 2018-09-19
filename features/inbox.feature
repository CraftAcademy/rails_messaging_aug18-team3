Feature: Browse inbox
    As a user 
    In order to able to see my emails
    I should be able to browse my inbox

    Background: User is Logged In
        Given the following user is in database
        | email              | password  | name   |
        | anyone@example.com | foobarbar | Anyone |  
        And I navigate to the login page
        And I submit email and password
        Then I should be logged in 
    
        Scenario: As a user I should be able to browse my inbox and see my emails
        Given I am on the landing page
        When I click on the "inbox" button
        



