# 1 
# It will throw an error because greeting was never evaluated
# actually it is initialized to nil becuase it is in an if clause

#2
# {a: 'hi there'} informal_greeting is referencing the same location of the hash symbols :a is pointing to. Another 
# way of saying it is that they are both pointing to the same object
# so when the << method is run, which mutates the caller, the value at the hashes key :a will be updated

# 3
# A 
# one is: one
# two is: two
# three is: three

# B
# one is: one
# two is: two
# three is: three

#C
# one is: two
# two is: three
# three is: one


#4
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.size != 4
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false if is_an_ip_number?(word) == false
  end
  return true
end


