require "./triangle_version2"
require "./equilateral"
require "./scalene"
require "./isosceles"
require "./right_angle"

class AskTriangleLengths
  
  x = 0;
  y = 0;
  z = 0;
  t = [];
  
  def enter_lengths
    puts "Enter the first of three lengths: "
    x = gets.chomp.to_i
    puts "Enter the second length: "
    y = gets.chomp.to_i
    puts "Enter the third length: "
    z = gets.chomp.to_i
    
    t = Triangle.new(x, y, z)
    
    while t.validate_sides == false || t.validate_sum == false
      puts "Fail! The sides #{x}, #{y} and #{z} do not make a triangle."
      puts "Please try again. Enter the first of three lengths: "
      x = gets.chomp.to_i
      puts "Enter the second length: "
      y = gets.chomp.to_i
      puts "Enter the third length: "
      z = gets.chomp.to_i
      t = Triangle.new(x, y, z)
    end # end while validation looop
    
  end # end enter_lengths
 
 
    
    # Example: 2, 2, 3
    triangles = [
      Scalene.new(x, y, z), # true, Not to return this
      Isosceles.new(x, y, z), # true, Return this 
      Equilateral.new(x, y, z), # not true
      RightAngle.new(x, y, z)
    ]
    
    
     # Return the triangle instance that the sides represent
     # In the example above, the second triangle (Isoceles) should be returned
    
end # end class


triangle = AskTriangleLengths.new.enter_lengths




=begin NO LONGER A THING
# find type of triangle

triangles.each do |t|
  puts t.validate_type
end
=end

=begin
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
=end





