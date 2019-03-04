require "pry" # add this to use Pry

counter = 0

loop do
  counter += 1
  binding.pry # execution will stop here
  break if counter == 5
end

# #Pry stops execution at the line where binding.pry is declared and gives us a
# prompt where we can type in an expression, such as counter, and see what
# the return value is
