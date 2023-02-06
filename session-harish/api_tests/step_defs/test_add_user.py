import pytest
import json
from pytest_bdd import scenarios, when, then
import requests

scenarios('../features/add_user.feature')

get_item_url = "http://127.0.0.1:5000/register"
data = {
    "username": "testuser",
    "email":"test@example.com",
    "phone": 123789}

@when('I send POST request to add new user')
def add_user():
    pytest.api_response1 = requests.post(get_item_url,json=data)

@then('I should get response contain a success message')
def check_the_message_returned():
    body = pytest.api_response1.json()
    assert   "user added successfully" == body['message'] 

@then('the api status code should be 201')
def check_status_code():
    assert pytest.api_response1.status_code == 201

@then('the api response content type should be json')
def check_content_type():
    assert pytest.api_response1.headers['Content-type'] == 'application/json'