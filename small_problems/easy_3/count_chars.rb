=begin
String

# Examples
Please write word or multiple words: walk
There are 4 characters in "walk".

# Data Structure:
string
Int

# Algorithm 
count chars in string and store in variable
print variable in output string

=end

puts "Please write word or multiple words: "

input = gets.chomp

length = input.length

puts "There are #{length} characters in '#{input}'."