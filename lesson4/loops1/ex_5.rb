say_hello = true
count = 0

while say_hello
  puts 'Hello!'
  count += 1
  say_hello = false if count == 5
end

# 5.times do
#   puts "Hello!"
# end
