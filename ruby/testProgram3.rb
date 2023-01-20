require 'test/unit'
require_relative "prob3"

class TestProblem1 < Test::Unit::TestCase
    def test_outputOf_hashModification_method
        assert_equal("empty",hashModification({}))
    end
    def test_outputOf_hashModification_method
        assert_equal({1=>1,3=>6},hashModification({1=>1, 2=>4,"name":"harish", 3=>6, :code=>"hello"}))
    end
end