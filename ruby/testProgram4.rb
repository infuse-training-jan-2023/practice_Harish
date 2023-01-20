require 'test/unit'
require_relative "prob4"

class TestProblem1 < Test::Unit::TestCase

    def test_checks_for_correct_output
        assert_equal("array is empty",skip_sports([],4))
    end
  
    def test_checks_for_correct_output
        assert_equal(skip_sports(["Cricket", "TT", "football", "hockey"],4), "invalid skip index")
    end
    
    def test_checks_for_correct_output
        assert_equal(["2:football", "3:hockey"],skip_sports(["Cricket", "TT", "football", "hockey"],2))
    end
end