=begin
Input: 
strings

output:
string concatenated together 

Examples:
Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!

Data structure:
Array
Strings

Algorithm
Create array of string options
Loop over array
each loop promt user for "index" input
save input to array as strings

Use string interpolation to print out inputs into a story

=end



words = ["noun", "verb", "adjective", "adverb"]
inputs = []

words.each do |word|
  print "Enter a #{word}: "
  input = gets.chomp
  inputs << input

end

puts "Do you #{inputs[1]} #{inputs[2]} a #{inputs[0]} #{inputs[3]}? That's hilarious!"
