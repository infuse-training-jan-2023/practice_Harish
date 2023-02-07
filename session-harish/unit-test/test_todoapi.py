from todoapi import get_todo

message_invalid ={"message": "Invalid number supplied"}
message_valid={
    "completed":0,
    "id": 1,
    "title": "delectus aut autem",
    "userId": 1
}

def test_get_todo_invalid_case(mocker):
    mock = mocker.patch('todoapi.get_todo', return_value = [])
    res = get_todo(1000)
    assert res['message'] == message_invalid['message']

def test_get_todo_valid_case(mocker):
    mock = mocker.patch('todoapi.get_todo', return_value = [])
    res = get_todo(1)
    for key in res.keys():
        assert res[key] == message_valid[key]