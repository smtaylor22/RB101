=begin
# Inputs 
Integer length of room
Integer width of room

# Output
Calculated area of room


# Examples
Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).

# Data Structure:
Integers

# Algorithm 
Prompt user for length and width of room
Multiply together 
=end
CONVERSION = 10.7639

puts "Enter the length of the room in meters: "
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

area = (length * width).round(2)
sq_ft = (area * CONVERSION).round(2)

puts "The area of the room is #{area} square meters (#{sq_ft} square feet)."