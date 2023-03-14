# GOAL: return true if the given string can be created by repeating any 
# substring within itself
#
# INPUT string
# OUTPUT boolean
#
# RULES: 
#   Explicit: 
#
#   Implicit: pattern can be any length
# DATA STRUCTURES
# Intermediate array of potential patterns
#
# ALGORITHM
# What kind of problem is this?
#   matching question - does created string match original?
#   math question - given the length of string, what are the potential pattern 
#   lengths?
#
# What helper methods could I use?
#   get substrings
#
# 'aba' - potential pattern 1
# 'abab' -> 1 or 2
# 'ababa' -> 1
# 'ababab' - 1, 2, or 3
# 7       -> 1
# 8       -> 1,2, 4
# 9       -> 1, 3
#
# Get all substrings up to half the string's length
# filter substrings to only be ones that are % 0 with string size
# Does any substring repeated string.size/sub.size times == string

def repeated_substring_pattern(string)
  substrings = []
  (0..(string.size/2-1)).each do |i|
    slice = string[0..i]
    substrings << slice
  end

  substrings.tap {|x| p x }.select! {|s| string.size % s.size == 0 }.tap {|x| p x }
  
  substrings.any? { |s| s * (string.size/s.size) == string }
end


p repeated_substring_pattern("abab") == true
p repeated_substring_pattern("aba") == false
p repeated_substring_pattern("aabaaba") == false
p repeated_substring_pattern("abaababaab") == true
p repeated_substring_pattern("abcabcabcabc") == true
p repeated_substring_pattern("MayoMakesPlanMayoMakesPlan") == true
