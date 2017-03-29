require "./triangle_version2"
require "./equilateral"
require "./scalene"
require "./isosceles"
require "./right_angle"

class AskTriangleLengths

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
    end

    triangles = [
      Scalene.new(x, y, z).validate_type,
      Isosceles.new(x, y, z).validate_type,
      Equilateral.new(x, y, z).validate_type
    ]

    if triangles[2] == true
      puts "The sides #{x}, #{y} and #{z} make an equilateral triangle."
    elsif triangles[1] == true
      puts "The sides #{x}, #{y} and #{z} make an isosceles triangle."
    else
      puts "The sides #{x}, #{y} and #{z} make a scalene triangle."
    end

    if RightAngle.new(x, y, z).validate_type == true
      puts "They also make a right angle triangle."
    end

  end

end

triangle = AskTriangleLengths.new.enter_lengths
