# What does this code print out and why?

name = 'Bob'         # => creates a string object with the value 'Bob', stores a reference to this object in the variable name
save_name = name     # => assign to save_name the reference that name holds; now save_name holds a reference to the same object
name = 'Alice'       # => create a new string object with the value 'Alice', store a reference to this object in the name variable
puts name, save_name # => print to the console the evaluatation of name and the evalutation of save_name, i.e. 'Bob' and 'Alice'

# What does this print out? Can you explain the results?

name = 'Bob'         # => creates a string object with the value 'Bob', stores a reference to this object in the variable name
save_name = name     # => assign to save_name the reference that name holds; now save_name holds a reference to the same object
name.upcase!         # => invoke the mutating version of upcase on the object referenced by name,
                     # => as a result the string (referenced by both name and by save_name) has a value of 'BOB'
puts name, save_name # => print to the console the evaluation of name and the evaluation of save_name, i.e. 'BOB' and 'BOB'
