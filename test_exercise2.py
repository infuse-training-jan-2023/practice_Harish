from exercise2 import Exercise2

def test_Exercise2_obj():
    exercise2_obj=Exercise2()
    assert (isinstance(exercise2_obj,Exercise2))

def test_element_at_invalidInput_emptyArray():
    numList=[]
    exercise2_obj=Exercise2()
    assert("array is empty"==exercise2_obj.element_at(numList,1))

    
def test_element_at_validInput():
    numList = [9, 5, 1, 2, 3, 4, 0, -1]
    exercise2_obj=Exercise2()
    assert(0 == exercise2_obj.element_at(numList, 6))


def test_element_at_invalidInput_index1():
    numList = [9, 5, 1, 2, 3, 4, 0, -1]
    exercise2_obj = Exercise2()
    assert("index out of bound" == exercise2_obj.element_at(numList, 12))

def test_element_at_invalidInput_Index2():
    numList = [9, 5, 1, 2, 3, 4, 0, -1]
    exercise2_obj = Exercise2()
    assert("index out of bound" == exercise2_obj.element_at(numList,-9))




def test_inclusive_range_validInput():
    numList = [9, 5, 1, 2, 3, 4, 0, -1]
    exercise2_obj = Exercise2()
    assert([1, 2,]==exercise2_obj.inclusive_range(numList, 2, 5))

def test_inclusive_range_invalidInput_emptyArray():
    numList=[]
    exercise2_obj=Exercise2()
    assert("array is empty"==exercise2_obj.inclusive_range(numList,1,7))


def test_inclusive_range_invalidInput_stat_pos():
    numList = [9, 5, 1, 2, 3, 4, 0, -1]
    exercise2_obj = Exercise2()
    assert("array index out of bound" == exercise2_obj.inclusive_range(numList, 8, 5))


def test_inclusive_range_invalidInput_end_pos():
    numList = [9, 5, 1, 2, 3, 4, 0, -1]
    exercise2_obj = Exercise2()
    assert("array index out of bound" == exercise2_obj.inclusive_range(numList, 2, 9))


def test_noninclusive_range_validInput():
    numList = [9, 5, 1, 2, 3, 4, 0, -1]
    exercise2_obj = Exercise2()
    assert([1, 2, 3, 4, 0]==exercise2_obj.non_inclusive_range(numList, 2, 7))

def test_non_inclusive_range_invalidInput_emptyArray():
    numList=[]
    exercise2_obj=Exercise2()
    assert("array is empty"==exercise2_obj.inclusive_range(numList,1,7))


def test_non_inclusive_range_invalidInput_start_pos():
    numList = [9, 5, 1, 2, 3, 4, 0, -1]
    exercise2_obj = Exercise2()
    assert("array index out of bound"==exercise2_obj.non_inclusive_range(numList, 8, 5))


def test_non_inclusive_range_invalidInput_end_pos():
    numList = [9, 5, 1, 2, 3, 4, 0, -1]
    exercise2_obj = Exercise2()
    assert("array index out of bound"== exercise2_obj.non_inclusive_range(numList, 2, 8))


def test_start_and_length_invalidInput_emptyArray():
    numList=[]
    exercise2_obj=Exercise2()
    assert("array is empty"==exercise2_obj.start_and_length(numList,1,7))

def test_start_and_length_validInput():
    numList = [9, 5, 1, 2, 3, 4, 0, -1]
    exercise2_obj = Exercise2()
    assert([2, 3, 4, 0, -1]== exercise2_obj.start_and_length(numList, 3, 5))


def test_start_and_length_invalidInput_start_pos():
    numList = [9, 5, 1, 2, 3, 4, 0, -1]
    exercise2_obj = Exercise2()
    assert("index out of bound"== exercise2_obj.start_and_length(numList, 9, 4))


def test_start_and_length_invalidInput_length():
    numList = [9, 5, 1, 2, 3, 4, 0, -1]
    exercise2_obj = Exercise2()
    assert("length  should be greater than zero"==exercise2_obj.start_and_length(numList, 2, -9))
