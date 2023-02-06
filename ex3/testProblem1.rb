require 'test/unit'
require_relative "problem1"

class TestProblem1 < Test::Unit::TestCase
    def test_make_Problem1_object
        ass1 = Problem1.new
        assert ass1.instance_of? Problem1
    end
    def test_check_invalid_input_size
        ass1= Problem1.new
        assert_equal("invalid input",ass1.serial_average('0001-01.79-4.09'))
    end
    def test_invalid_input
        ass1 =Problem1.new
        assert_equal("invalid input",ass1.serial_average('000101.79-4.09'))
    end

    def test_invalid_input_alpha
        ass1 =Problem1.new
        assert_equal("invalid input",ass1.serial_average('0001-1A.79-4.09'))
    end


    def test_checks_for_correct_output
        ass1 =Problem1.new
        assert_equal("001-02.94",ass1.serial_average('001-01.79-04.09') )
    end
    

end
