flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.index {|x| x[0, 2] == 'Be'}


flintstones.find_index do |name|
  name.start_with?('Be')
end
