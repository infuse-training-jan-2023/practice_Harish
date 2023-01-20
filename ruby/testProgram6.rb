require 'test/unit'
require_relative "prob6"

class TestProblem1 < Test::Unit::TestCase
    
  
    def test_encodingBase64_method_invalidInput
        assert_equal("file doesnt exists" ,encodingBase64('./t.txt'))
    end
    
    def test_encodingBase64_method_validInput
        assert_equal("file empty" ,encodingBase64('./test.txt'))
    end
    def test_encodingBase64_method_validInput
        assert_equal("encoding succesfull" ,encodingBase64('./data1.txt'))
    end

    
   
    
end
