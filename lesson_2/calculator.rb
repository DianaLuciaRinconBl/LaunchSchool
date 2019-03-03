# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output a result

def prompt(message)  #=>this method will be used for every prompt for input so they all have the same structure =>... displaying the message
  puts "=> #{message}"
end


def valid_number?(num)
  num.to_i != 0 # => this way we invalidate input number that are a 0 or a string because if we test a string on irb with the method to_i (example: "hi".to_i) this will return 0
end

def operation_to_message(op)
  case op #because this case statement is the last (and of course onyl one) expression in this method, it will automatically be returned therefore we do not have to add return statements to each strings
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
  #if there was another expression here, then that would break this method and therefore we would need to add return statement to each of the strings in the case expression as the case expression is not the last expression of this method anymore and its return value won't be the automatic return value of this method
end

prompt("Welcome to Calculator! Please enter your name: ")
name = ''

loop do
  name = gets.chomp

  if name.empty?
    prompt("Please make sure to use a valid name")
  else
    break
  end
end

prompt("Hi #{name}")
loop do #main loop

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


  operator_prompt = <<-MSG # the <<- allows us to display a multiline message / use any three letter combination as long as they match at the beginning and at the end (delimiters)
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1,2,3 or 4")
    end
  end

prompt("#{operation_to_message(operator)} the two numbers... ")

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

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')

end

prompt("Thank you using the calculator. Goodbye!")
