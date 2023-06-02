=begin
# Inputs 
2 Integers

# Examples
multiply(5, 3) == 15
 

# Data Structure:
Integer

# Algorithm 
Multiply arguments and return result

=end
 
def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

puts square(5) == 25

def power_to(n, p)
  return 1 if p == 0
  result = multiply(n, power_to(n, p - 1))
end

puts power_to(2,2)

# multiply(2, power_to(2, 1))
# multiply(2, multiply(2, power_to(2, 0))
# multiply(2, multiply(2, 1))

