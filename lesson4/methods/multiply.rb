def multiply(array, number)
  counter = 0
  new_array = [ ]

  loop do
    break if counter == array.size

    new_array << array[counter] * number
    counter += 1
  end
  new_array
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3)
p my_numbers
