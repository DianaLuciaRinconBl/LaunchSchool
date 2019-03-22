def double_odd_indices(numbers)
  doubled_indices = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_index = counter # => this line can be omitted
    current_number *= 2 if current_index.odd? #=> is could be just => current_number *= 2 if counter.odd?
    doubled_indices << current_number

    counter += 1

  end
   doubled_indices

end

my_numbers = [1, 4, 3, 7, 2, 6] # => [1, 8, 3, 14, 2, 12]
double_odd_indices(my_numbers)
