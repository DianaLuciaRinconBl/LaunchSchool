numbers = []

loop do
  break if numbers.size == 5
  puts 'Enter any number: '
  input = gets.chomp.to_i # enter numbers from 1 to 5 in order
  #numbers.unshift(input) # [5, 4, 3, 2, 1]  add to begining of array
  numbers.push(input) # [1, 2, 3, 4, 5] add to the end of the array
end

p numbers
