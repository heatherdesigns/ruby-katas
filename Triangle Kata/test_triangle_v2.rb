require "minitest/autorun"
require "./triangle_version2"

class TestTriangleV2 < Minitest::Test
  
  def test_validate_sides
    triangle = Triangle.new(1, 2, 3)
    assert_equal triangle.validate_sides, true 
  end
  
  def test_validate_sides_false
    triangle = Triangle.new(5, 3, 0)
    assert_equal triangle.validate_sides, false
  end
  
  def test_validate_sides_negative?
    triangle = Triangle.new(2, 4, -6)
    assert_equal triangle.validate_sides, false
  end
  
  def test_validate_sum
    triangle = Triangle.new(1, 2, 3)
    assert_equal triangle.validate_sum, true
  end
  
  def test_validate_sum_false
    triangle = Triangle.new(5, 3, 0)
    assert_equal triangle.validate_sum, false
  end
  
end