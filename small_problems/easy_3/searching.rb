=begin
# Inputs 
Integer
6 integers
# Output
String expressing true or false

# Examples

# Data Structure:

# Algorithm 
Loop to get 6 integer inputs
store each item in array
break if length of array equals 6

Get the last number in the array
Search to see if number is contained in the first 5 elements of array
Print message telling whether it appears or not

=end

numbers = []
total_inputs = 6
iterations = %w(1st 2nd 3rd 4th 5th last)

i = 0
while i < total_inputs
  puts "==> Enter the #{iterations[i]} number: " 
  numbers << gets.to_i
  i += 1
end

result = numbers[0..5].include?(numbers[-1])

wording = result ? "appears" : "does not appear"

puts "The number #{numbers[-1]} #{wording} in #{numbers}"