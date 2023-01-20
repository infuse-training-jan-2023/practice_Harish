require 'test/unit'
require_relative "prob5"

class TestProblem1 < Test::Unit::TestCase
    
    def test_modifyJsonFile_method_for_emptyInput
        assert_equal("file not found" ,modifyJsonFile(''),)
    end
    
    def test_modifyJsonFile_method_for_validInput
        assert_equal("file modify succefully" ,modifyJsonFile('./data.json'),)
    end

    def test_modifyJsonFile_for_invalid_file
        assert_equal("file not found" ,modifyJsonFile('./test.txt'),)
    end

    def test_modifyJsonFile_method_for_emptyFile
        assert_equal("file is empty" ,modifyJsonFile('./test.json'),)
    end


end
