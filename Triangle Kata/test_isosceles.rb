require "minitest/autorun"
require "./isosceles"

class TestIsosceles < Minitest::Test
  
  def test_validate_type_isoscele
    triangle = Isosceles.new(4, 4, 6)
    assert_equal @triangle.validate_type_isoscele?, true
  end
  
  def test_validate_type_isosceles_false
    triangle = Isosceles.new(1, 2, 3)
    assert_equal @triangle_b.validate_type_isosceles?, false
  end
  
end
