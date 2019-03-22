names = %w(Sally Joe Lisa Henry)

loop do
  puts names.pop #remove from last to first
  #puts names.shift ==> remove from first to last
  break if names.size == 0
end
