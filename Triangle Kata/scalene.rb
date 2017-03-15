require "./triangle_version2"

class Scalene < Triangle

  def validate_type_scalene?
    @sides[0] != @sides[1] && @sides[1] != @sides[2]
  end
end 
