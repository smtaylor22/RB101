=begin
# Inputs 
Integer: Bill
Integer: Tip percentage

# Output
The tip amount
The total billing amount


# Examples


# Data Structure:
Integers

# Algorithm 
=end

puts "What is the bill? "
bill = gets.to_f

puts "What is the tip percentage? "
tip_rate = gets.to_f / 100

tip_val = (bill * tip_rate).round(2)

total_bill = (tip_val + bill).round(2)

puts "The tip is $#{sprintf("%#.2f", tip_val)}"
puts "The total is $#{sprintf("%#.2f", total_bill)}"


