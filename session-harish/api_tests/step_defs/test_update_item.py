import pytest
import json
from pytest_bdd import scenarios, when, then
import requests

scenarios('../features/update_item.feature')

get_item_url = "http://127.0.0.1:5000/item/12"
data1 = {
    "item": "clear backlogs",
    "reminder":1}

@when('I upadate an item to the todo list')
def modify_item():
    pytest.api_response1 = requests.put(get_item_url,json=data1)

@then('I should get response as updated todo item')
def check_the_items_returned():
    print("Checking")
    body = pytest.api_response1.json()
    for key in data1.keys():
        assert  key in body.keys() 

@then('the api status code should be 201')
def check_status_code():
    assert pytest.api_response1.status_code == 201

@then('the api response content type should be json')
def check_content_type():
    assert pytest.api_response1.headers['Content-type'] == 'application/json'