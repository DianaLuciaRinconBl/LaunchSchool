#Given this nested Hash:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

#figure out the total age of just the male members of the family.

males_age = 0

munsters.each do | _ , value|
  males_age += value['age'] if value['gender'] == "male"
end

p males_age
