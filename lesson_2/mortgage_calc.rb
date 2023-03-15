# Inputs 
# strings, int, floats

# Output 
# monthly payment

def prompt(message)
  puts "=>#{message}"
end

def valid_input?(input)
  /^-?\d+$/.match(input) ||  /\d/.match(input) && /^-?\d*\.?\d*$/.match(input)
end

def valid_integer?(input)
  /^-?\d+$/.match(input)
end

loan_amount = ''
monthly_interest = ''
loan_duration = ''
apr = ''
prompt("Welcome to the mortgage calculator")

loop do 
  prompt("Enter loan amount: ")

  loan_amount = gets.chomp

  if valid_input?(loan_amount)
    loan_amount = loan_amount.to_f
    break
  else
    prompt("Invalid input! Enter number with no commas")
  end
end

monthly_interest = ''

loop do
  prompt("Enter Annual percentage rate (APR) (eg: 10 or 10.5)")

  apr = gets.chomp

  if valid_input?(apr)
    monthly_interest = (apr.to_f / 100) / 12.0


    break
  else
    prompt("Invalid input! Enter percentage rate with no % symbols")
  end
end

loop do
  
  prompt("Enter desired loan duration in months: ")
  
  loan_duration = gets.chomp
  
  if valid_integer?(loan_duration)
    loan_duration = loan_duration.to_f
    break
  else
    prompt('Invalid input! Enter number of months with no decimals')
  end
end

p loan_amount
p monthly_interest
p loan_duration

monthly_payment = loan_amount * (monthly_interest / (1 - (1 + monthly_interest)**(-loan_duration)))

prompt("For a loan of #{loan_amount} at #{apr} for #{loan_duration} months is $#{format('%.2f', monthly_payment)}")


