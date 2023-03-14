# Inputs 
# strings, int, floats

# Output 
# monthly payment

def prompt(message)
  puts "=>#{message}"
end

def valid_loan?(num)
  num.match?(/[[:digit:]]/)
end

prompt("Welcome to the mortgage calculator")

loop do 
  prompt("Enter loan amount: ")

  loan_amount = gets.chomp

  if valid_loan?(loan_amount)
    break
  else
    prompt("Incorrect input! Enter number with no decimals or commas")
  end
end

loop do
  prompt("Enter ")


