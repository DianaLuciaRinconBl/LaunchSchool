VALID_CHOICES = { 'rock' => "r",
                  'paper' => "p",
                  'scissors' => "sc",
                  'spock' => "sp",
                  'lizard' => "l" }

POINTS_TO_WIN = 5

result = ''

def clear_terminal
  system('clear') || system('cls')
end

def prompt(message)
  puts "=> #{message}"
end

def display_welcome_message
  "Hello! Welcome to the Rock, Paper, Scissors, Spock, Lizard GAME."
end

def display_game_instructions
  prompt "The first to win #{POINTS_TO_WIN} games wins the match!"
  prompt "= = = = GOOD LUCK!!! = = = ="
end

def display_score(for_player, for_computer)
  prompt "PLAYER SCORE: #{for_player}"
  prompt "COMPUTER SCORE: #{for_computer}"
end

def display_final_scores(for_player, for_computer)
  prompt "==== FINAL SCORES: ===="
  prompt "PLAYER: #{for_player}"
  prompt "COMPUTER: #{for_computer}"

  prompt "YOU WON!!!!!" if for_player == POINTS_TO_WIN
  prompt "COMPUTER WON!!!" if for_computer == POINTS_TO_WIN
end

def display_goodbye_message
  "Thank you for playing. Good bye!!!"
end

def player_won?(message)
  message == "You scored!" ? true : false
end

def computer_won?(message)
  message == "Computer scored!" ? true : false
end

def player_won_match?(count)
  count == POINTS_TO_WIN ? true : false
end

def computer_won_match?(count)
  count == POINTS_TO_WIN ? true : false
end

def display_result(player, computer)
  hash = { r:  ["l", "sc"],
           p:  ["r", "sp"],
           sc: ["p", "l"],
           l:  ["sp", "p"],
           sp: ["r", "sc"] }

  if hash[player.to_sym].include?(computer)
    "You scored!"
  elsif hash[computer.to_sym].include?(player)
    "Computer scored!"
  else
    "It's a tie!"
  end
end

def valid_play_again_input?(play_again)
  play_again == "y" || play_again == "n"
end

loop do # Match loop
  clear_terminal

  prompt display_welcome_message
  display_game_instructions

  choice = ''
  player_count = 0
  computer_count = 0
  loop do # input and score loop
    loop do # user input loop only
      choice_prompt = <<-MSG
===========================================
      Please choose one option as follows:
        1) rock: r
        2) paper: p
        3) scissors: sc
        4) spock: sp
        5) lizard: l
      MSG

      prompt(choice_prompt)

      choice = gets.chomp.downcase

      break if VALID_CHOICES.values.include?(choice)
      prompt "Not a valid choice, try again!"
    end # end of user input loop only

    computer_choice = VALID_CHOICES.values.sample

    clear_terminal

    prompt "You chose: #{choice}; Computer chose: #{computer_choice}"

    result = display_result(choice, computer_choice)
    prompt result.to_s

    player_count += 1 if player_won?(result)
    computer_count += 1 if computer_won?(result)

    break if player_won_match?(player_count) || computer_won_match?(computer_count)

    display_score(player_count, computer_count)
  end # end of match loop

  display_final_scores(player_count, computer_count)

  play_again = ''
  prompt "Do you want to start a match again? (Y or N)"

  loop do # Play again loop
    play_again = gets.chomp.downcase

    if valid_play_again_input?(play_again)
      break
    else
      prompt "Please enter: Y to keep playing or N to exit the game."
    end
  end # end of Play again loop

  break unless play_again == "y"
  prompt "=============================="
end # end of Main loop

prompt display_goodbye_message
