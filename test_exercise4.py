from exercise4 import Exercise4
def test_Exercise4_obj():
    exercise4_obj=Exercise4()
    assert (isinstance(exercise4_obj,Exercise4))
    
def test_count_subarray_invalidInput_emptyList():
    exercise4_obj=Exercise4()
    result=exercise4_obj.count_subarrays([],1)
    assert "List is empty" == result
    
def test_count_subarray_validInput_positive():
    exercise4_obj=Exercise4()
    result=exercise4_obj.count_subarrays([1,2,3],3)
    assert 2== result
    
def test_count_subarray_validInput_negtive():
    exercise4_obj=Exercise4()
    result=exercise4_obj.count_subarrays([7,4,-7,2,-8],-3)
    assert 1== result