from passwordValidation import validate_password

valid_message={'status': 'valid password'}
invalid_message={'status': 'invalid password'}
def test_validate_password_valid_case(mocker):
    mock = mocker.patch('passwordValidation.validate_password', return_value = valid_message)
    response1 = validate_password("@bcdefgH")
    assert response1 == valid_message

def test_validate_password_invalid_case(mocker):
    mock = mocker.patch('passwordValidation.validate_password', return_value = invalid_message)
    res = validate_password("@bcdefg")
    assert res == invalid_message    
