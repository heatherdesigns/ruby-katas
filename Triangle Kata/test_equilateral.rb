require "minitest/autorun"
require "./equilateral"

class TestEquilateral < Minitest::Test
  
  def test_validate_type
    triangle = Equilateral.new(5, 5, 5)
    assert_equal triangle.validate_type_equilateral?, true
  end
  
  def test_validate_type_false
    triangle = Equilateral.new(1, 2, 3)
    assert_equal triangle.validate_type_equilateral?, false 
  end
  
end
