
produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hash)
  hash_keys = hash.keys
  counter = 0

  new_hash = { }


  loop do
    break if counter == hash_keys.size
    current_key = hash_keys[counter]

    if hash[current_key] == 'Fruit'
      new_hash[current_key] = 'Fruit'
    end
    counter += 1
  end
  new_hash
end

p select_fruit(produce)
p produce

#LAUNCHSCHOOL'S SOLUTION


# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }
#
#
# def select_fruit(hash)
#   produce_keys = hash.keys
#   count = 0
#   fruit_hash = { }
#
#   loop do
#     break if count == produce_keys.size
#
#     current_key = produce_keys[count]
#     current_value = hash[current_key]
#
#     if current_value == 'Fruit'
#        fruit_hash[current_key] = current_value
#     end
#
#     count += 1
#   end
#
#   fruit_hash
# end
#
# p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
