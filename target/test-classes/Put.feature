Feature: Put API Demo


  Background:
    * url  'https://reqres.in/api'
    * header Accept = 'application/json'

  Scenario: Test a sample api put
    Given path '/users/2'
    And def requestBody = read("./data/requestPost.json")
    And request requestBody
    When method PUT
    Then status 200
    And print response