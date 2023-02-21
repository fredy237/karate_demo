Feature: Delete User


  Background:
    * url  baseUrl
    * header Content-type = 'application/json'
    * header Authorization = authorization
    * def id = "63e0cf2cecfed8f71bb7b5ec"


  Scenario: delete User pass
    Given path '/api/v1/user' + id
    When method DELETE
    Then status 200

