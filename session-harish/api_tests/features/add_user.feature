Feature: Add user
    As a user I want to register new user

    Scenario:  successfully add new user
        When I send POST request to add new user
        Then I should get response contain a success message
        Then the api status code should be 201
        Then the api response content type should be json