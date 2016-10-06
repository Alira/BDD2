Feature: Define profile
  As an admin 
  I want to define user profile
  In order to manage user roles

  Scenario: Defineefine profile for an exinsting user
    Given I am Logged in as an admin
    And I have a user "user1" with the profile "simple user"
    And I am in the profile assignment page
    When I change the profile of "user1" from "simple user" to "Admin" 
    And I log in with "user1"
    Then I should have "Admin" profile assigned
