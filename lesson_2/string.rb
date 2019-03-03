# a method that takes an array of strings, and returns a string that is all those strings concatenated together
#
# Given an array of strings
#
# create a method that passes that array
# create a variable to store an empty string
# iterate through each string in array
# insert each string to the store string

# set empty string
# Set method
# Iterate though array
# insert strings

array = ["this", "is", "an", "array"]


def strings(arrays_string)
  arrays_string.each do |string|
    new_string = " "
    print new_string.insert(- 1, string)
  end
end

strings(array)
