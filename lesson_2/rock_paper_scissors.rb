VALID_CHOICES ={rock: "r", paper: "p", scissors: "sc", spock: "sp", lizard: "l"}

def prompt(message)
  puts "=> #{message}"
end

prompt "Hello! Welcome to the Rock, Paper, Scissors, Spock, Lizard GAME"

def display_result(player, computer)
  hash = {r:  ["l", "sc"],
          p:  ["r", "sp"],
          sc: ["p", "l"],
          l:  ["sp", "p"],
          sp: ["r", "sc"]
  }

  if hash[player.to_sym].include?(computer)
    prompt "You won!"
  elsif hash[computer.to_sym].include?(player)
    prompt "Computer won!"
  else
    prompt "It's a tie!"
  end
end


loop do
  choice = ''
  loop do
    choice_prompt = <<-MSG
      Please choose one option as follows:
      1) rock: r
      2) paper: p
      3) scissors: sc
      4) spock: sp
      5) lizard: l
    MSG

  prompt(choice_prompt)

    choice = gets.chomp

    break if VALID_CHOICES.values.include?(choice)
    prompt "Not a valid choice, try again!"
  end

  computer_choice = VALID_CHOICES.values.sample

  prompt "You chose: #{choice}; Computer chose: #{computer_choice}"

  display_result(choice, computer_choice)

  play_again = ''
  prompt "Do you want to play again? (Y or N)"

  loop do
    play_again = gets.chomp

    if play_again.downcase == "y"
      break
    elsif play_again.downcase == "n"
      break
    else
      prompt "Please enter: Y to keep playing or N to exit the game."
    end
  end

  break unless play_again.downcase == "y"
end

prompt "Thank you for playing. Good bye!!!"
