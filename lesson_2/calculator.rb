# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output a result

def prompt(message)  #=>this method will be used for every prompt for input so they all have the same structure =>... displaying the message
  puts "=> #{message}"
end


def valid_number?(num)
  num.to_i != 0
end

prompt("Welcome to Calculator!")

number1 = '' #initialising the variable number1 outside of the loop allows us to use this variable throughout the whole program

loop do
  prompt("What's the first number?")
  number1 = gets.chomp

  if valid_number?(number1)
    break
  else
    prompt("Hmm...that doesn't look like a valid number")
  end
end

number2 = ''#initialising the variable number2 outside of the loop allows us to use this variable throughout the whole program

loop do
  prompt("What's the second number?")
  number2 = gets.chomp

  if valid_number?(number2)
    break
  else
    prompt("Hmm...that doesn't look like a valid number")
  end
end


prompt("What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")
operator = gets.chomp


result =  case operator
          when '1'
            number1.to_i + number2.to_i
          when '2'
            number1.to_i - number2.to_i
          when '3'
            number1.to_i * number2.to_i
          when '4'
            number1.to_f / number2.to_f
end

prompt("The result is #{result}")
