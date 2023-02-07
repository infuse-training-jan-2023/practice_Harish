import pytest
from pytest_bdd import scenarios, when, then,given
import requests

scenarios('../features/delete_item.feature')

delete_item_url = "http://127.0.0.1:5000/item/1"

@when('I send DELETE http request')
def get_item():
    pytest.api_response = requests.delete(delete_item_url)
    
@then('I should get message item delete successfully')
def check_the_message_returned():
    body = pytest.api_response.json()
    assert body['status'] == "item deleted successfully"

@then('the api status code should be 200')
def check_status_code():
    assert pytest.api_response.status_code == 200

@then('the api response content type should be json')
def check_content_type():
    assert pytest.api_response.headers['Content-type'] == 'application/json'