from passwordValidation import validate_password


def test_validate_email(mocker):
    mock = mocker.patch('passwordValidation.validate_password', return_value = [])
    res = validate_password("@bcdefgH")
    assert res.status == "200 OK"
