=begin
 
On line 1, the local variable name is assigned to the string object "Bob".
On line 2 the save_name variable is set to reference the same object that name is referencing
On line 3, the upcase! method mutates the caller, so that permantely changes the object that 
the local variable name is referencing.
This demonstrates ruby pass by reference vs pass by value
This also will change the output of printing the save_name variable because save_name is referencing
the same object that name is pointing to.


=end