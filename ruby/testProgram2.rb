require 'test/unit'
require_relative "prob2"

class TestProblem1 < Test::Unit::TestCase
    
    def test_elment_at_method_for_invalidInput
        assert_equal("array is empty",element_at([],9))
    end

    def test_elment_at_method_for_invalidInput
        assert_equal("array index out of bound",element_at([9, 5, 1, 2, 3, 4, 0, -1],9))
    end
   
    def test_elment_at_method_for_validInput
        assert_equal(-1,element_at([9, 5, 1, 2, 3, 4, 0, -1],7))
    end

    def test_elment_at_method_for_validInput
        assert_equal(5,element_at([9, 5, 1, 2, 3, 4, 0, -1],-7))
    end


    
    def test_start_and_length_method_for_validInput
        assert_equal([2, 3],start_and_length([9, 5, 1, 2, 3, 4, 0, -1],3,2))
    end
    def test_start_and_length_method_for_emptyArry
         assert_equal("array is empty",start_and_length([],9,2))
    end
    
    def test_start_and_length_method
        assert_equal("index out of bound",start_and_length([9, 5, 1, 2, 3, 4, 0, -1],-9,2))
    end
   
    def test_start_and_length_method_invalidLength
        assert_equal("length should be greater than zero",start_and_length([9, 5, 1, 2, 3, 4, 0, -1],3,0))
    end

    def test_checks_for_output_of_start_and_length_method
        assert_equal([1, 2, 3],start_and_length([9, 5, 1, 2, 3, 4, 0, -1],2,3))
    end
    
    
    def test_checks_for_output_of_non_inclusive_range_method
        assert_equal([5,1],non_inclusive_range([9, 5, 1, 2, 3, 4, 0, -1],2,4))
    end
    
    def test_checks_for_output_of_non_inclusive_range_method
        assert_equal("array index out of bound",non_inclusive_range([9, 5, 1, 2, 3, 4, 0, -1],3,-9))
    end


    def test_checks_for_output_of_inclusive_range_method
        assert_equal([9,5,1],inclusive_range([9, 5, 1, 2, 3, 4, 0, -1],1,3))
    end

    def test_checks_for_output_of_inclusive_range_method
        assert_equal("array index out of bound",inclusive_range([9, 5, 1, 2, 3, 4, 0, -1],9,3))
    end

end
