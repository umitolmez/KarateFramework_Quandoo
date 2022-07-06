@regression @getSingleUser
Feature: Get user credentials from GET single user endpoint request

  Background:
    * def baseURL = "https://reqres.in/api/"
    * def singleUserEndpoint = "users/"
    * def RIDG = Java.type('utilities.RandomIDGenerator')
    * def randomID = RIDG.generateID()

  Scenario:
    Given url baseURL
    And path singleUserEndpoint + randomID
    When method GET
    Then status 200
    And response.id == randomID
    And match response.data.email == "#present"
    And match response.data.last_name == "#string"
    And match response.data.avatar == "https://reqres.in/img/faces/" + randomID + "-image.jpg"
    And match response.data.first_name == "#string"
