import pytest
from pytest_bdd import scenarios, when, then
import requests

scenarios('../features/get_item.feature')

get_item_url = "http://127.0.0.1:5000/item/1"

@when('I search for a item')
def get_item():
    pytest.api_response1 = requests.get(get_item_url)

@then('I should get a item present')
def check_the_items_returned():
    body = pytest.api_response1.json()
    for item in body:
        assert type(item) == dict

@then('the api status code should be 200')
def check_status_code():
    assert pytest.api_response1.status_code == 200

@then('the api response content type should be json')
def check_content_type():
    assert pytest.api_response1.headers['Content-type'] == 'application/json'