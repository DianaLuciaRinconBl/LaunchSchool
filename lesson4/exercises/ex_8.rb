numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

#Firstly at index 0 the element is 1, but when that number is removed then at index 1 will be 3.
#[1,3]

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

#[1,2]
