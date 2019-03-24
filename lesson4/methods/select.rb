def select_letter(string, letter)
  counter = 0
  how_many = ''

  loop do
    break if counter == string.size
    current_letter = string[counter]

    if current_letter == letter
        how_many << current_letter
    end

    counter += 1
  end

  how_many
end


question = 'How many times does a particular character appear in this sentence?'
puts select_letter(question, 'a').size
puts select_letter(question, 't').size
puts select_letter(question, 'z').size
