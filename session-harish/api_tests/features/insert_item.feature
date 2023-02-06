Feature: Adding new items to the todo list
    As a user I can add new item to the todo list

    Scenario:  Add an item to todo list
        When I add an item to the todo list
        Then I should get response as todo item
        Then the api status code should be 201
        Then the api response content type should be json