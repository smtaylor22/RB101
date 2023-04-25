=begin
# Inputs 
Integer: age
Integer: years to work

# Output
year of retire
years of work left


# Examples


# Data Structure:
Integers

# Algorithm 
=end

puts "What is your age? "
age = gets.chomp.to_i

puts "At what age would you like to retire? "
retire_age = gets.chomp.to_i

work_remaining = retire_age - age

current_year = Time.new.year
retire_year = current_year + work_remaining


puts "It's #{current_year}. You will retire in #{retire_year}."
puts "You only have #{work_remaining} of work to go!"