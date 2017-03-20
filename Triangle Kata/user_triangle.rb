require "./triangle_version2"
require "./equilateral"
require "./scalene"
require "./isosceles"
require "./right_angle"

class UserTriangle < Triangle
  
  def enter_lengths
    puts "Enter the first of three lengths: "
    @a = gets.chomp.to_i
    puts "Enter the second length: "
    @b = gets.chomp.to_i
    puts "Enter the third length: "
    @c = gets.chomp.to_i 
    @sides = [a, b, c].sort!
    @sides
  end
  
end


triangle = UserTriangle.new(0, 0, 0)
triangle.enter_lengths

# is this a triangle???

if triangle.validate_sides
  puts "The sides of #{triangle.sides[0]}, #{triangle.sides[1]} and #{triangle.sides[2]} are all greater than zero and can possibly make a triangle."
else
  puts " -- Error --" 
  puts "One of the sides is negative or zero. Therefore you cannot create a triangle."
  puts "Goodbye!"
  exit
end

if triangle.validate_sum
  puts "The sum of sides #{triangle.sides[0]}, #{triangle.sides[1]} and #{triangle.sides[2]} make a triangle."
else
  puts " -- Error --" 
  puts "The sum of the sides do not create a triangle."
  puts "Goodbye!"
  exit
end

# find type of triangle

triangle = Equilateral.new(triangle.sides[0], triangle.sides[1], triangle.sides[2])
if triangle.validate_type_equilateral?
  puts "This is an equilateral triangle."
end

triangle = Isosceles.new(triangle.sides[0], triangle.sides[1], triangle.sides[2])
if triangle.validate_type_isosceles?
  puts "This is an isosceles triangle."
end

triangle = Scalene.new(triangle.sides[0], triangle.sides[1], triangle.sides[2])
if triangle.validate_type_scalene?
  puts "This is a scalene triangle."
end

triangle = RightAngle.new(triangle.sides[0], triangle.sides[1], triangle.sides[2])
if triangle.validate_right_angle?
  puts "This is a right angle triangle."
end





