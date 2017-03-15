require "./triangle_version2"

class Isosceles < Triangle
  def validate_type_isosceles? # two sides are equal
    @sides[0] == @sides[1] || @sides[1] == @sides[2]
  end
end 
