=begin
Input: 
  Integer

Output:
  Asterisks String characters stacked to look like a Triangle with height of integer

Requirments:
Needs to hypotenuse at bottom left slanting up to top right

Examples:
triangle(5)

    *
   **
  ***
 ****
*****

Data Structure:
Integer and string

Algorithm:
Set a counter variable

Set a while Loop that counts up to the input 
Print Loop index number of asterisks on each iteration padded with spaces
break when loop index is >= 9

=end


def triangle(n)
  counter = 0

  while counter <= n
    puts "#{' ' * (n - counter)}#{'*' * counter}"
    counter += 1
  end
end


def triangle2(n)
  counter = n
  
  while counter >= 0
    puts "#{' ' * (n - counter)}#{'*' * counter}"
    counter -= 1
  end
end

def triangle3(n)
  counter = n
  
  while counter >= 0
    puts "#{'*' * counter}"
    counter -= 1
  end
end

def triangle4(n)
  counter = 0
  
  while counter <= n
    puts "#{'*' * counter}"
    counter += 1
  end
end
  

triangle(5)
puts
triangle2(5)
puts
triangle3(5)
puts
triangle4(5)