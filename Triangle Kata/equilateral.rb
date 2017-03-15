require "./triangle_version2"

class Equilateral < Triangle 
  
  attr_accessor :sides
  
  def validate_type_equilateral? # all sides are equal
    @sides[0] == @sides[1] && @sides[1] == @sides[2]     
  end  
end
