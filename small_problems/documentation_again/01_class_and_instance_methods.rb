puts File.path("/dev/null") # => "/dev/null"
# File::path
# Returns the string representation of the path
# The method path is called on the class File itself, not an instance of that class.
# It is a Public Class Method

puts File.new("testfile").path
# File#path # => "testfile"
# First do "touch testfile" at the command prompt.
# Returns the pathname used to create file as a string.
# The method path is called on an instance of the File class, not on the state itself.
# It is a Public Instance Method

