ages = { "Herman" => 32,
          "Lily" => 30,
          "Grandpa" => 5843,
          "Eddie" => 10,
          "Marilyn" => 22,
          "Spot" => 237 }

values = ages.values
youngest = values[0]


ages.reject! do |name, age|
  if age < youngest
     youngest = age
  end
 end

p youngest


ages.values.min
