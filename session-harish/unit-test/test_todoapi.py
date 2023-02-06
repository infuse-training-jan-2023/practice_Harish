from todoapi import get_todo


def test_get_todo(mocker):
    mock = mocker.patch('todoapi.get_todo', return_value = [])
    res = get_todo(1)
    assert res.status == "200 OK"
