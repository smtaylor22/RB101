=begin
 
Inputs:
  String (multiple words)
  empty string

Output:
  Input string with box of dashes around it with + symbol in corners

Mental Model
  Take lenght of string given assign to variable str_length
  print +- with number of dashes == str_length followed by -+
  print | and space with number of spaces == str_length in between followed by space and  |
  print | and space with string followed by space and |
  print | and space with number of spaces == str_length in between followed by space and  |
  print +- with number of dashes == str_length followed by -+


Examples:
  print_in_box('To boldly go where no one has gone before.')
  +--------------------------------------------+
  |                                            |
  | To boldly go where no one has gone before. |
  |                                            |
  +--------------------------------------------+

  print_in_box('')
  +--+
  |  |
  |  |
  |  |
  +--+
  
Data Structure:
  String
  
  
Algorithm:
  Take lenght of string given assign to variable str_length
  str_length = input.size
  Intialize output strings
    first_last = ''
    padding_lines = ''
    string_line = ''
  
  Create first_last line
  Create padding_lines   
  Create string_line 

  print first_last line
  print padding_lines   
  print string_line 
  print padding_lines  
  print first_last line

  

=end

def print_in_box_mine(string)
  str_length = string.length

  first_last = ''
  padding_lines = ''
  string_line = ''

  # Create first_last line
  first_last = first_last + "+-" 
  str_length.times { first_last = first_last + "-"}
  first_last = first_last + "-+" 
 
  # Create padding_lines   
  padding_lines = padding_lines + "| "
  str_length.times { padding_lines = padding_lines + " "}
  padding_lines = padding_lines + " |"
  
  # Create string_line 
  string_line = "| #{string} |"

  puts first_last
  puts padding_lines
  puts string_line
  puts padding_lines
  puts first_last
end 

# Modified to fit into terminal 80 columns wide
def print_in_box_mod(message)
  length = message[0...76].size
  horizontal_rule = "+#{'-' * (length + 2)}+"
  empty_line = "|#{' ' * (length + 2)}|"
  
  puts horizontal_rule
  puts empty_line
  puts "| #{message[0...76]} |"
  puts empty_line
  puts horizontal_rule
end

# New Algorithm
# Get total size of string
# Divide up how many times can splice out 80 char out of string
# Loop over string spliced interval umber of times 
# Iterate over 80 characters at a time

# wrap print in box
def print_in_box_wrap(message)
  
  total_len = message.size
  segments = (total_len / 76.0).ceil() # 76.0 forces float
  
  # Set window width to 76 characters to fit into 80 width column
  window_width = 76
  horizontal_rule = "+#{'-' * (window_width + 2)}+"
  empty_line = "|#{' ' * (window_width + 2)}|"
  
  puts horizontal_rule
  puts empty_line
  
  start_char = 0
  end_char = window_width
  segments.times do
    segment_size = message[start_char...end_char].size
    spaces = window_width - segment_size
    # Add spaces for padding to message segments less than window_width characters
    puts "| #{message[start_char...end_char]}#{" " * spaces} |"

    start_char += window_width
    end_char += window_width
  end

  puts empty_line
  puts horizontal_rule
end

print_in_box_wrap('This is the last step in PEDAC — the “C”, which stands for “code with intent”. This stage is all about implementing the solution in your language of choice. The major benefit of investing time in the previous steps (the PEDA) is that it reduces the implementation to a simple translation of the algorithm into programming language syntax.')
