def short_long_short(str1, str2)
  sorted = [str1, str2].sort_by {|s| s.size }
  short = sorted.first
  long = sorted.last
  short + long + short
end

p short_long_short('abc', 'defgh') #== "abcdefghabc"
p short_long_short('abcde', 'fgh') #== "fghabcdefgh"
p short_long_short('', 'xyz') #== "xyz"
