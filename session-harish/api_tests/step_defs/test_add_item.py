import pytest
import json
from pytest_bdd import scenarios, when, then
import requests

scenarios('../features/insert_item.feature')

get_item_url = "http://127.0.0.1:5000/item"
data1={
    "item": "clear backlogs",
    "reminder":1}

@when('I add an item to the todo list')
def modify_item():
    pytest.api_response1 = requests.post(get_item_url,json=data1)

@then('I should get response as todo item')
def check_the_items_returned():
    print("Checking")
    body = pytest.api_response1.json()
    for key in data1.keys():
        assert  key in body.keys() 

@then('the api status code should be 200')
def check_status_code():
    assert pytest.api_response1.status_code == 201

@then('the api response content type should be json')
def check_content_type():
    assert pytest.api_response1.headers['Content-type'] == 'application/json'