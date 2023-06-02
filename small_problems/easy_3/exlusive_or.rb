# input
# 2 bool 
# output
# boolean

def xor?(bool1, bool2)
  !!(!(bool1 && bool2) && (bool1 || bool2))
end

# def xor?(value1, value2)
#   (value1 && !value2) || (value2 && !value1)
# end

# def xor?(value1, value2)
#   return true if value1 && !value2
#   return true if value2 && !value1

# end

# p xor?(5.even?, 4.even?) 
# p xor?(5.odd?, 4.odd?) 
# p xor?(5.odd?, 4.even?)
# p xor?(5.even?, 4.odd?)

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false

p xor?("tree", nil)