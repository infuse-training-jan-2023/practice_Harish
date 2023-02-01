from exercise1 import Exercise1

def test_exercise1_obj():
    exercise1_obj=Exercise1()
    assert (isinstance(exercise1_obj,Exercise1))
    
def test_get_inputString():
    exercise1_obj=Exercise1()
    exercise1_obj.get_inputString("test input")
    assert "test input"==exercise1_obj.inputString
    
def test_serial_input_invalidInput():
    exercise1_obj=Exercise1()
    exercise1_obj.get_inputString("test input")
    result=exercise1_obj.serial_average()
    assert "invalid input string"==result
    
def test_serial_input_validInput():
    exercise1_obj=Exercise1()
    exercise1_obj.get_inputString("123-09.89-09.78")
    result=exercise1_obj.serial_average()
    assert "123-09.84" == result
    
def test_serial_input_invalidInputlength():
    exercise1_obj=Exercise1()
    exercise1_obj.get_inputString("124-09.90")
    result=exercise1_obj.serial_average()
    assert "invalid input string"==result

def test_serial_input_invalidInputEmptystring():
    exercise1_obj=Exercise1()
    exercise1_obj.get_inputString("")
    result=exercise1_obj.serial_average()
    assert "invalid input string"==result

