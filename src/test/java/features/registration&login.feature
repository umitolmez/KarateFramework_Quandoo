@e2e @regression
Feature: E2E scenario for registration & login and verify that every endpoint returns the correct token

  Background:
    * def baseURL = "https://reqres.in/api"
    * def id = 10
    * def singleUserEndpoint = "users/"
    * def registerEndpoint = "/register"
    * def loginEndpoint = "/login"

  Scenario:
    Given url baseURL
    And path singleUserEndpoint + id
    When method GET
    Then status 200
    And response.id == id
    Given url baseURL + registerEndpoint
    When header Accept = "application/json"
    And header Content-Type = "application/json"
    And request
    """
    {
    "email": "byron.fields@reqres.in",
    "password": "quandoo"
    }
    """
    And method POST
    Then status 200
    And response.id == id
    And response.token == "QpwL5tke4Pnpja7X" + id
    Given url baseURL + loginEndpoint
    When header Accept = "application/json"
    And header Content-Type = "application/json"
    And request
    """
    {
    "email": "byron.fields@reqres.in",
    "password": "quandoo"
    }
    """
    And method POST
    Then status 200
    And response.token == "QpwL5tke4Pnpja7X" + id