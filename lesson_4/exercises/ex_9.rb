words = "the flintstones rock"


words.split.map {|word| word.capitalize}.join(' ')

# the join method is applied to the return value of the map method
