def stringy(num)
  result = ''
  one = true
  num.times do 
    number = one ? '1' : '0'
    result = result + number
    one = !one 
  end
  result
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'


def stringy_sol(size, start = 1)
  numbers = []
  last = start === 1 ?  0 : 1
  size.times do |index|
    number = index.even? ? start : last 
    numbers << number
  end

  numbers.join
end


puts stringy_sol(3, 0)


def stringy_other(size, default = 1)
  numbers = []

  size.times do |idx|
    idx += 1 if default == 0
    number = idx.even? ? 1 : 0
    numbers << number 

  end

  numbers.join
end

puts stringy_other(3, 0)
