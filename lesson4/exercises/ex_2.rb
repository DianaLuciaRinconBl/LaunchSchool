# input
# hash
# output
# sum of integer (ages)

ages = { "Herman" => 32,
          "Lily" => 30,
          "Grandpa" => 5843,
          "Eddie" => 10,
          "Marilyn" => 22,
          "Spot" => 237 }


# total = 0
#
# ages.each do |key, value|
#   total += value
# end
#
# puts total


# p ages.values.inject(:+)


values = ages.values
total = 0

values.each do |item|
  total += item
end

p total
