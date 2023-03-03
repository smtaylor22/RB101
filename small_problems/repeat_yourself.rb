# repeat
def repeat(string, num)
  num.times { puts string}
end

# repeat('Hello', 3)

# odd
# def is_odd?(number)
#   if number.abs() % 2 == 1
#     return true
#   end
#   false
# end

# other version
def is_odd?(number)
  number.remainder(2) == 1
end

puts is_odd?(5161)