#1
a = "forty two"
b = "forty two"
c = a

puts a.object_id
puts b.object_id
puts c.object_id

#2 
a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# 3 
# The first string will not mutate the pumpkins because reassignment in ruby does not mutate the originol object
# All it does is it copies the orignol string with the new added string to a new object and variable 
# However, the << method mutates the calle in this case the second variable. This permantelty alters the object from
# the variable reference passed in 
# ____________This is a good one_________________

# 4
# my_string will now be pumpkinsrutabaga. Here the << mutated the caller and changed the objcet that the new local scoped a_string_param
# and my_string are both referencing/pointing to.
# my_array will still be ["pumpkins"] because the reasignment in the method only reasigns a new array to the local variable an_array_param


# 5 
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]
 
  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"


# 6 
def color_valid(color)
  color == "blue" || color == "green"
end

puts color_valid("yellow")












