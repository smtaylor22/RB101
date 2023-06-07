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

# def palindrome?(string)
#   start_index = 0
#   end_index = string.size - 1

#   while start_index < string.length
#     return false if !(string[start_index].eql?(string[end_index]))
#     start_index += 1
#     end_index -= 1
#   end

#   true

# end

# # puts palindrome?('madam') == true
# # puts palindrome?('Madam') == false          # (case matters)
# # puts palindrome?("madam i'm adam") == false # (all characters matter)
# # puts palindrome?('356653') == true


# def palindrome2?(input)
#   input == input.reverse
# end

# # puts palindrome2?('madam') == true
# # puts palindrome2?(%w(m a d a m)) == true

# def real_palindrome?(string)
#   string.casecmp?(string.reverse)
# end

# puts real_palindrome?('madam') == true
# puts real_palindrome?('Madam') == true           # (case does not matter)
# puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# puts real_palindrome?('356653') == true
# puts real_palindrome?('356a653') == true
# puts real_palindrome?('123ab321') == false

def palindromic_number?(integer)
  integer === (integer.to_s.reverse).to_i
end 

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(002200) == true
puts palindromic_number?(5) == true