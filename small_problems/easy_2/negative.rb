=begin
# Inputs 
Integer

# Output
Integer


# Examples

# Data Structure:

# Algorithm 
Return negative of number if positive
If 0 or less return originol number
=end


def negative(num)
  num > 0 ? -num : num
end

puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0      # There's no such thing as -0 in ruby