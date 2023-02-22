# Write some code to output all the vowels from each string
hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |key, array|
  array.each do |word|
    word.chars.each { |char| puts char if 'aeiou'.include?(char) }
  end
end
