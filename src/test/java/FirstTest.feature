Feature:  Sample API Tests


  Background:
    * url  'https://reqres.in/api'
    * header Accept = 'application/json'
  Scenario: Test a Sample Get API

    Given path  '/users?page=2'
    And param page = 2
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies
    And match response.data[1].name != null
    And assert response.data.length == 6
    And match $.data[3].id == 10