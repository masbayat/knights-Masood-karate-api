Feature: Security Token API calls
  Scenario: send request to /api/token

    Given url "https://qa.insurance-api.tekschool-students.com"
    And path "/api/token"
    And request  {"username": "supervisor", "password": "tek_supervisor"}
    When method post
    Then status 200


  Scenario Outline: send request to /api/token with wrong username
    Given url "https://qa.insurance-api.tekschool-students.com"
    And request  {"username": "wronguser", "password": "tek_supervisor"}
    When method post
    And print response
    Then status <expectedStatus>
    And assert response.httpStatus == "<httpStatus>"
    And assert response.errorMessage == "<errorMessage>"

    Examples:
      | data_username | data_password  | expectedStatus | httpStatus | errorMessage                 |
      | WrongUsername | tek_supervisor | 404            | NOT_FOUND  | User WrongUsername not found |
      | supervisor     | wrongpassword  | 400            | BAD_REQUEST| password not matched        |

