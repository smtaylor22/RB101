=begin

given input of two integers
set the sum of two variables to new variable
return variable

Start
# Given input of two integers
SET sum = input1 + input2
PRINT sum
END

given input of array of string
set a new vriable empty string
Loop over each word in string
Concatenate each word to the new string
Return result

START
given input of array of strings
SET iterator = 0
SET string = ''
WHILE iterator < length of array
  string += array[iterator]
  iterator += 1
PRINT string
END

Given input of array of integers
Loop over the array iterating 2 elements at a time
At each iteratation save array at that index to new array
return new arrya

START
# Given input of array of integers
SET iterator = 0 
SET newarray = []
WHILE iterator < length of array
  Append array[index] to newarray
  iterator += 2
PRINT newarray
END

Given input of character and string
Set a count variable
Loop over string comparing each string character to input character
Increment count variable by one if character is found 
If count variable is set to three
Return loop index 
If loop finishes without 3 occurnces return nil

START
# Given input of character and string
SET iterator = 0
SET char_tally = 0
WHILE iterator < length of string
  IF string[iterator] == input_char
    char_tally += 1
  IF char_tally == 3
    PRINT iterator
PRINT nil
END


Given input of two arrays
Loop over each array
At each loop push the current index element of the first array to a new array then push the second
Return the array

START
# Given input of two arrays
SET iterator = 0 
SET new_array = []
WHILE iterator < length of array 1 + array 2
  Append array1[iterator] to new_array
  Append array2[iterator] to new_array
PRINT new_array
END

=end