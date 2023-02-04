Feature: Get item
    As a user I can get  the todo item by id

    Scenario: Get a item
        When I search for a item
        Then I should get a item present
        Then the api status code should be 200
        Then the api response content type should be json