# ALGORITHM
# initialize substrings array
# iterate from first index to last index
#   on each index, iterate from that index to final index
#   slice the substring from starting index to ending index
#   append that slice to substrings array
#
# return substrings array

def get_substrings(string)
  substrings = []
  (0...string.size).each do |i|
    (i...string.size).each do |ii|
      substring = string[i..ii]
      substrings << substring
    end
  end

  substrings
end

p get_substrings("meow")
p get_substrings("meow") == ["m", "me", "meo", "meow", "e", "eo", "eow", "o", "ow", "w"]
