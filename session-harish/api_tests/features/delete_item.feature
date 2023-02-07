Feature: Delete an item
    As a user I can delete the todo item by id

    Scenario: Delete an item
        When I send DELETE http request
        Then I should get message item delete successfully
        Then the api status code should be 200
        Then the api response content type should be json    