from emailValidation import validate_email


valid_message={'status': 'valid email'}
invalid_message={'status': 'invalid email'}
def test_validate_email_valid_case(mocker):
    mock = mocker.patch('passwordValidation.validate_password', return_value = valid_message)
    response1 = validate_email("test@example.com")
    assert response1 == valid_message

def test_validate_email_invalid_case(mocker):
    mock = mocker.patch('passwordValidation.validate_password', return_value = invalid_message)
    res = validate_email("test@mail")
    assert res == invalid_message   