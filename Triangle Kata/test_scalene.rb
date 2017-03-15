require "minitest/autorun"
require "./scalene"

class TestScalene < Minitest::Test
  
  def test_validate_type_scalene
    triangle = Scalene.new( 1, 2, 3)
    assert_equal triangle.validate_type_scalene?, true
  end
  
  def test_validate_type_scalene_false
    triangle = Scalene.new(4, 4, 4)
    assert_equal triangle.validate_type_scalene?, false
  end
  
end
