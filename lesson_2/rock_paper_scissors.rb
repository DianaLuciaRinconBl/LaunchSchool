VALID_CHOICES = %w(rock paper scissors)

def prompt(message)
  puts "=> #{message}"
end

# SEE BELOW THE REFACTORING OF THIS LOGIC
# def display_result(player, computer)
#   if    (player == "rock" && computer == "scissors") ||
#         (player == "paper" && computer == "rock") ||
#         (player == "scissors" && computer == "paper")
#     prompt "You won!"
#   elsif (player == "rock" && computer == "paper") ||
#         (player == "paper" && computer == "scissors") ||
#         (player == "scissors" && computer == "rock")
#     prompt "Computer won!"
#   else
#     prompt "It's a tie!"
#   end
# end

def win?(first, second)
  (first == "rock" && second == "scissors") ||
    (first == "paper" && second == "rock") ||
    (first == "scissors" && second == "paper")
end

def display_result(player, computer)
  if win?(player, computer)
    prompt "You won!"
  elsif win?(computer, player)
    prompt "Computer won!"
  else
    prompt "It's a tie!"
  end
end

loop do
  choice = ''
  loop do
    prompt "Choose one: #{VALID_CHOICES.join(', ')}"
    choice = gets.chomp

    break if VALID_CHOICES.include?(choice)
    prompt "Not a valid choice, try again!"
  end

  computer_choice = VALID_CHOICES.sample

  prompt "You chose: #{choice}; Computer chose: #{computer_choice}"

  display_result(choice, computer_choice)

  prompt "Do you want to play again? (y or n)"
  play_again = gets.chomp

  break unless play_again == "y"
end

prompt "Thank you for playing. Good bye!!!"
