Feature: Post API Demo


  Background:
    * url  'https://reqres.in/api'
    * header Accept = 'application/json'
    * def expectedOutput = read("./data/response1.json")


  Scenario:
    Given path '/users'

    And def requestBody = read("./data/requestPost.json")
    And request requestBody
    And set requestBody.job = 'kokiman'
    When method POST
    Then status 201
    And match response == expectedOutput
    And print response