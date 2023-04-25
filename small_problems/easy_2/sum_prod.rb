=begin
# Inputs 
Integer greater than 0
String for multiply or sum

# Output
String with sum or product 


# Examples


# Data Structure:


# Algorithm 
Loop whole program
Loop to prompt user for integer
get user input
Make sure integer is greater than 0
Loop first input message if not

get sum or product 
calc sum or product of numbers from 1 to input
Loop again
=end

def calc_sum(num)
  (1..num).inject(:+)
end

def calc_prod(num)
  (1..num).inject(1, :*)
end

input_num = 0
compute_method = ''

loop do
  puts ">> Please enter an integer greater than 0: "
  input_num = gets.to_i
  break if input_num > 0 
end

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
compute_method = gets.chomp

if compute_method == "s"
  sum = calc_sum(input_num)
  puts "The sum of the integers between 1 and #{input_num} is #{sum}."
elsif compute_method == "p"
  product = calc_prod(input_num)
  puts "The product of the integers between 1 and #{input_num} is #{product}."
else
  puts "Incorrect method"
end
