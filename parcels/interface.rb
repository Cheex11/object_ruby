require './lib/parcels'

puts "Welcome to CodyExpress"
puts "Please enter the length of your parcel!"

length  = gets.chomp
puts "Please enter the height of your parcel!"
height = gets.chomp
puts "Please enter the width of your parcel!"
width  =gets.chomp
puts "Please enter the weight of your parcel!"
weight = gets.chomp

parcel = Parcel.new(length.to_i, height.to_i, width.to_i, weight.to_i)

puts "Your parcel will cost $#{parcel.cost_to_ship} to ship!"
