from emailValidation import validate_email


def test_validate_email(mocker):
    mock = mocker.patch('emailValidation.validate_email', return_value = [])
    res = validate_email("email@example.com")
    assert res.status == "200 OK"
