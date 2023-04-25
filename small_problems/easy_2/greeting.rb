=begin
# Inputs 
String: name or name!

# Output
string


# Examples


# Data Structure:


# Algorithm 

=end

puts "What is your name? "

name = gets.chomp

if name.end_with?("!")
  name.chop!
  puts "Hello #{name}. Why are we screaming?".upcase
else
  puts "Hello #{name}."
end