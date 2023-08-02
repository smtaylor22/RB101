=begin
INput
string

output 
one character
two characters

Requirements
Out 1 char if odd length input
Out 2 char if even length input

Data structure
string

Algorithm
Find length of string
return string[length/2] if odd or string[length/2-1..lengt=h]

=end

def center_of(string)

  length = string.length
  puts length/2
  length.odd? ? string[length/2] : string[(length/2 - 1)..length/2] 


end

def center_of2(string)
  center_index = string.size / 2
  if string.size.odd?
    string[center_index]
  else
    string[center_index - 1, 2]
  end
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'