# fizzbuzz kata
# http://codingdojo.org/kata/FizzBuzz/
# solved by Heather Taylor @ February 2017 Dayton Clean Coders meetup

x = 1

while x <= 100
  if (x % 3 == 0) && (x % 5 != 0)
    puts "fizz"
  elsif x % 5 == 0 && (x % 3 != 0)
    puts "buzz"
  elsif (x % 3 == 0) && (x % 5 == 0)
    puts "fizz buzz" 
  else
    puts x
  end
  x = x + 1
end
  