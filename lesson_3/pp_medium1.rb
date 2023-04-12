#1
10.times {|i| puts "#{' ' * i}The Flinstones Rock!"}

#2 
puts "the value of 40 + 2 is " + (40 + 2)

# The error arises due to trying to concat a string with an integer 
# the integer needs to be converted to a string before it concatenate them 

puts "the value of 40 + 2 is #{40 + 2}"
puts "the value of 40 + 2 is " + (40 + 2).to_s

#3
def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

# number % divison == 0 is checking whether the divisor can be divided by the number evenly without any remainder 
# line 8's purpose is to return the array of factors after the loop has finished

# 4 
# the rolling_buffer1 has side effects because it will mutate the object that of the buffer variable
# this means after the text has been appended to the buffer variable it will be permantely altered
# the first method returns a reference to the object passed in 

# 5 
limit = 15
 
def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"

# In this example the problem is that the method has defined a new scope 
# this means that it does not have access to variables that are declared outsdie the method
# In this case, he needs to add the limit variable as one of the paramaters of the fib method



# 6 
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# This will output 34 because the answer variable is not actually changed after the 
# mess with it function is run
# This is because integer variable in Ruby are immutable. They can only be reassigned to new objects 


# 7 
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

mess_with_demographics(munsters)

p munsters

# The hash did get ranscked that's because reassignment for a hash does actually change the values permantently 
# The hash object id was actuallly passed as an argument so when the values were changes it was making changes
# to the actual value where the hash was stored. 


# 8
                              paper
                                paper
                          paper          rock   
puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")




# 9 
# this would result in 'no' because foo evaluates to 'yes' 










