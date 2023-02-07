import pytest
from pytest_bdd import scenarios, when, then
import requests

scenarios('../features/save_items.feature')

get_item_url = "http://127.0.0.1:5000/save"

@when('I send a request to save todo list')
def get_item():
    pytest.api_response1 = requests.get(get_item_url)

@then('I should get response containing the success message')
def check_the_items_returned():
    body = pytest.api_response1.json()
    assert "data saved successfully" == body['status']

@then('the api status code should be 200')
def check_status_code():
    assert pytest.api_response1.status_code == 200

@then('the api response content type should be json')
def check_content_type():
    assert pytest.api_response1.headers['Content-type'] == 'application/json'