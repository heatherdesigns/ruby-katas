require "minitest/autorun"
require "./asks_triangle_lengths"

class TestUserTriangle < Minitest::Test

 def test_enter_lengths
   triangle = AskTriangleLengths.new("", "", "")
   assert_equal ["2", "2", "2"], triangle.enter_lengths
 end

end
