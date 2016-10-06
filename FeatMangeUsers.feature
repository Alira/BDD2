Feature: User login
  As a user
    I want to enter login and password
    In order to log in

  Scenario Outline: User authentication
    Given I am on the authentication page
    When I enter a <login> and <password>
    Then the message <ahtehtication_status> is displayed

    Examples: 
      | login     | password  | ahtehtication_status       |
      | correct   | correct   | "success"                  |
      | correct   | incorrect | "wrong_login_or_password"  |
      | incorrect | correct   | "wrong_login_or_password"  |
      | correct   | _         | "Enter login and password" |
      | _         | correct   | "Enter login and password" |
      | _         | _         | "Enter login and password" |
