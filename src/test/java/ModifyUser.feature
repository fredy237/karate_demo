@pesa
Feature: Modify user


  Background:
    * url  baseUrl
    * header Content-type = 'application/json'
    * header Authorization = authorization
    * def requestBody = read("./data/body.json")
    * def id = "63e0bc33ecfed8f71bb7b5d4"


  Scenario Outline: Update User pass
    Given path '/api/v1/user/' + id
    And print authorization

    And request {"first_name": <first_name>,"last_name": <last_name>,"email": <email>,"phone": <phone>'#string',"birth_day": <birth_day>,"password": <password>,"role": <role>,"isActive": <isActive>,"isEmailConfirmed": <isEmailConfirmed>}
    When method PATCH
    Then status 200
    And print response.message
    Examples:
      | read("./data/body.json") |
