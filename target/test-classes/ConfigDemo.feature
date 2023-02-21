@pesa
Feature: Config Demo


  Background:
    * url  baseUrl
    * header Content-type = 'application/json'
    * header Authorization = authorization
    * def requestBody = read("./data/body.json")


  Scenario Outline: Create User pass
    Given path '/api/v1/user/register'
    And print authorization
    And print requestBody
    And request {"first_name": <first_name>,"last_name": <last_name>,"email": <email>,"phone": <phone>'#string',"birth_day": <birth_day>,"password": <password>,"role": <role>,"isActive": <isActive>,"isEmailConfirmed": <isEmailConfirmed>}
    When method POST
    Then status 201
    And print response.message
    Examples:
      | read("./data/body.json") |

  Scenario Outline: Create User non pass
    Given path '/api/v1/user/register'
    And print authorization
    And print requestBody
    And request {"first_name": <first_name>,"last_name": <last_name>,"email": <email>,"phone": <phone>'#string',"birth_day": <birth_day>,"password": <password>,"role": <role>,"isActive": <isActive>,"isEmailConfirmed": <isEmailConfirmed>}
    When method POST
    Then status 400
    And assert response.message == "Cet utilisateur existe déjà"
    Examples:
      | read("./data/body.json") |
