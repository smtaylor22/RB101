# Inputs 
  # Positive integer
  # Bool

# Output
  # Integer: Half the input salary 
  # or zero


# Examples
# calculate_bonus(2800, true) == 1400
# calculate_bonus(1000, false) == 0

# Data Structure: Integers

# Algorithm 
# If argument is true 
# Take input salary and divide it in two returning bonus result
# Otherwise return 0


def calculate_bonus(number, bool)
  result = bool ? number / 2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000


def calculate_bonus(number, bool)
  bool ? number / 2 : 0
end