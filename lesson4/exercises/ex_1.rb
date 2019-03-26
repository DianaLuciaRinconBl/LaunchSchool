# input
# array
# output
# hash with keys = names / values = indices

# def hash(array)
#   new_hash = { }
#
#   array.each do |item|
#     new_hash[item] = array.index(item)
#   end
#   new_hash
# end
#
# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# p hash(flintstones)

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
hash = { }

flintstones.each_with_index do |item, index|
  hash[item] = index
end

p hash
