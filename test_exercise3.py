from exercise3 import Exercise3

def test_Exercise3_obj():
    exercise3_obj=Exercise3()
    assert (isinstance(exercise3_obj,Exercise3))
    

def test_skip_sports_method_invalidInput():
    Exercise3_obj=Exercise3()
    emptyList=[]
    result=Exercise3_obj.skip_sports(emptyList,2)
    assert "list is empty"==result
    
def test_skip_sports_method_validInput():
    Exercise3_obj=Exercise3()
    result=Exercise3_obj.skip_sports(['cricket','TT','Football','Hockey'],2)
    assert ['2:Football','3:Hockey']==result
    
def test_skip_sports_method_invalidInput_SkipPosition1():
    Exercise3_obj=Exercise3()
    result=Exercise3_obj.skip_sports(['cricket','TT','Football','Hockey'],4)
    assert "skip position greater than list length or equal to list length"==result
    
def test_skip_sports_method_invalidInput_SkipPosition2():
    Exercise3_obj=Exercise3()
    result=Exercise3_obj.skip_sports(['cricket','TT','Football','Hockey'],0)
    assert "skip position should be greater than zero"==result
    
def test_skip_sports_method_invalidInput_SkipPosition3():
    Exercise3_obj=Exercise3()
    result=Exercise3_obj.skip_sports(['cricket','TT','Football','Hockey'],-2)
    assert "skip position should be greater than zero"==result
 
 