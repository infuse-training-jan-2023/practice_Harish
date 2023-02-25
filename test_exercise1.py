from exercise1 import Exercise1

exercise1_obj=Exercise1()
def test_exercise1_obj():
    assert (isinstance(exercise1_obj,Exercise1))
    
def test_serial_input_invalidInput():
    result=exercise1_obj.serial_average("test input")
    assert "invalid input string"==result

def test_serial_input_validInput():    
    result=exercise1_obj.serial_average("123-09.89-09.78")
    assert "123-09.84" == result
    
def test_serial_input_invalidInputlength():
    result=exercise1_obj.serial_average("124-09.90")
    assert "invalid input string"==result

def test_serial_input_invalidInputEmptystring(): 
    result=exercise1_obj.serial_average("")
    assert "invalid input string"==result