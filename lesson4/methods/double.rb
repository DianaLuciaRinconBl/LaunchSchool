def double_numbers!(numbers)
  counter = 0

  loop do
    break if counter == numbers.size

    numbers[counter] *=2
    counter += 1
  end
  puts numbers.object_id
  puts "================="
  numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p double_numbers!(my_numbers)
puts my_numbers.object_id
