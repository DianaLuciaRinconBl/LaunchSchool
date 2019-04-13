def valid_number(input)
  input.to_f.real != 0 || input.to_i.real != 0
end

puts valid_number(0.3)
puts valid_number(33)
puts valid_number("tres")
