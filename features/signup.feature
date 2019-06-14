Feature: User can create a new account
  As a visitor
  So that the system remembers me
  I want to create a new account

Scenario: Create a new account
  Given I am on the sign up page
  When I fill in "Nome" with "Orlando"
  And I fill in "Cognome" with "Scarpa"
  And I fill in "Email" with "orlandoscarpa95@gmail.com"
  And I fill in "Password" with "10101010"
  And I fill in "user[password_confirmation]" with "10101010"
  And I fill in "01-01-2015" for "Nato il"
  And I follow "Registrati"
  Then I should be on the home page
  When I follow "Profilo"
  Then I am on my profile page

Scenario: Can't create an account
  Given I am on the sign up page
  When I fill in "Email" with "orlandoscarpa95@gmail.com"
  And I fill in "Password" with "10101010"
  And I follow "Registrati"
  Then I should be on the sign up page
