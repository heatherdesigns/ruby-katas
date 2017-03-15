# https://github.com/sparkbox/apprenticeships/blob/overhaul/basic-programming/project-triangle-kata.md
# Last update: March 14, 2017 by Heather

class Triangle
  attr_accessor :a, :b, :c, :sides
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    @sides = [a, b, c].sort!
  end 
  
  def validate_sides
    @sides[0] > 0
  end
  
  def validate_sum
    (@sides[0].to_i + @sides[1].to_i) >= @sides[2].to_i
  end
  
end 


