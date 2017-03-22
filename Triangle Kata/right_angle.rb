require "./triangle_version2"

class RightAngle < Triangle
  def validate_type 
    (@sides[0]*@sides[0]) + (@sides[1]*@sides[1]) == (@sides[2]*@sides[2]) || (@sides[1]*@sides[1]) + (@sides[2]*@sides[2]) == (@sides[0]*@sides[0]) || (@sides[0]*@sides[0]) + (@sides[2]*@sides[2]) == (@sides[1]*@sides[1])
  end
end 

