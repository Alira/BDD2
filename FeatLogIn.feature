Feature: User Manager
  As an admin 
  I want to add and update a user
  In order to manage users

  Scenario: Addition of a no existing user
    Given I am logged in as an admin
    When I add user
      | first_name | last_name  | login | password |
      | Jean       | Lemarchand | USER1 | PWD1     |
    Then the user should be created
    And verify I can log in with the added user
    And verify first name and last name of user in home page

  Scenario: Addition of an existing user
    Given I am logged in as an admin
    When I add user
      | first_name | last_name | login | password |
      | Nicolas    | Cazajous  | USER1 | PWD1     |
    Then an error message should be displayed

  Scenario: update of an existing user
    Given I am logged in as an admin
    And I am in the update user page
    When I update user informations
      | first_name   | last_name     | login     | password     |
      | New_TestName | New_LoginName | New_login | New_password |
    Then User informations should be updated
    And verify In can log in with the updated user
    And verify first name and last name of user in home page
