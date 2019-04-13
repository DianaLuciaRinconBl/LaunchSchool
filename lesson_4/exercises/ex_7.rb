statement = "The Flintstones Rock"

hash = { }
letters = ('a'..'z').to_a + ('A'..'Z').to_a

letters.each do |letter|
  current_letter = statement.scan(letter).count
  hash[letter] = current_letter if current_letter > 0
end

p hash
