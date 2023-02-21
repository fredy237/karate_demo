@pesa
Feature: User List


  Background:
    * url  baseUrl
    * header Content-type = 'application/json'
    * header Authorization = authorization


  Scenario: get user list
    Given path '/api/v1/user'
    When method GET
    Then status 200

