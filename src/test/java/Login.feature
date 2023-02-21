@pesa
Feature: User List


  Background:
    * url  baseUrl
    * header Content-type = 'application/json'
    * header Authorization = authorization
    * def requestBody = read("./data/login.json")


  Scenario: get user list
    Given path '/api/v1/auth/login'
    And request requestBody
    When method POST
    Then status 201

