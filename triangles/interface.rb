require './lib/triangles'

puts "Please enter your triangle sides"

side_a = gets.chomp
side_b = gets.chomp
side_c = gets.chomp

triangle = Triangle.new(side_a.to_i, side_b.to_i, side_c.to_i)

if triangle.fake_triangle == true
  puts "THAT'S NOT A TRIANGLE"
else
  puts "Your triangle is a #{triangle.type}"
end
