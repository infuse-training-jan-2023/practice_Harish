require 'test/unit'
require_relative "exercise2"

class TestExercise < Test::Unit::TestCase
    def test_start_and_length_method_for_validInput
        exercise2_obj = Exercise2.new()

        assert_equal([2, 3],exercise2_obj.start_and_length([9, 5, 1, 2, 3, 4, 0, -1],3,2))
    end
    def test_start_and_length_method_for_emptyArry
        exercise2_obj = Exercise2.new()

         assert_equal("array is empty",exercise2_obj.start_and_length([],9,2))
    end
    
    def test_start_and_length_method
        exercise2_obj = Exercise2.new()

        assert_equal("index out of bound",exercise2_obj.start_and_length([9, 5, 1, 2, 3, 4, 0, -1],-9,2))
    end
   
    def test_start_and_length_method_invalidLength
        exercise2_obj = Exercise2.new()

        assert_equal("length should be greater than zero",exercise2_obj.start_and_length([9, 5, 1, 2, 3, 4, 0, -1],3,0))
    end


end
