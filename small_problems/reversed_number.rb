=begin

Input:
Integer

Output:
Input Integer with digits reversed

Requirements:
If input has 0s at end, do not allow leading zeros

Data structure:
INteger

Algorithm

Take input 
convert number to array
reverse array
convert array back to number
return result

=end

def reversed_number(n)
  
  input = n.to_s
  input_arr = input.split(//)
  input_arr.reverse!
  output = ''
  input_arr.each do |num|
    output += num
  end
  output.to_i

end

puts reversed_number(12345) == 54321
puts reversed_number(12213) == 31221
puts reversed_number(456) == 654
puts reversed_number(12000) == 21 # No leading zeros in return value!
puts reversed_number(12003) == 30021
puts reversed_number(1) == 1