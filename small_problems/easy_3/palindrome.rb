=begin
# Inputs 
String

# Examples
palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true
 

# Data Structure:
string

# Algorithm 
Reverse string and store in variable

Loop over both the standard and reversed string checking that each character at loop index equal eachother 
return false if any value does not 
Return true if looped through end of both strings

=end

def palindrome?(string)
  reversed = string.reverse

  string.each_char do |x|
    return false if string[x] != reversed[x]
  end

  true
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true