# Write a method named to_weird_case that accepts a string, and
# # returns the same sequence of characters with every 2nd character
# # in every third word converted to uppercase. Other characters
# # should remain the same.
# ALGORITHM
#   split my string into words
#   map onto words
#     - every third word gets transformed
#         capitalize every second character in word
#     - other words get returned as is
#   join words with a space and return that string
#
#   weird case - word
#   split word into characters
#   map onto those characters
#     every second character gets upper cased
#     other characters returned as is
#   join characters back into word
# # Examples:
#
def to_weird_case(string)
  weird_words = string.split.map.with_index do |word, i|
    (i + 1) % 3 == 0 ? weird_case(word) : word
  end

  weird_words.join(' ')
end

def weird_case(word)
  word.chars.map.with_index { |c,i| i.odd? ? c.upcase : c }.join
end

p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
 p to_weird_case(
 'It is a long established fact that a reader will be distracted') ==
 'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
 p to_weird_case('aaA bB c') == 'aaA bB c'
 p to_weird_case(
 'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
 'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'
#
# # The tests above should print "true".
