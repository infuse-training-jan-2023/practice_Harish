Feature: save todo list as csv file
    As a user I can save the todo list 

    Scenario: successfully save todo list
        When I send a request to save todo list
        Then I should get response containing the success message
        Then the api status code should be 200
        Then the api response content type should be json