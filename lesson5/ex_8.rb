#Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'],
        fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each_value do |array|
  array.each do |value|
    value.chars.each { |vowel| puts vowel if vowel =~ /[aeiou]/ }
  end
end
