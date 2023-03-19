# def ascii_value(string)
#   return 0 if string.empty?
#   string.chars.map {|c| c.ord}.sum
# end
# OPTION 2: no need for explicit 0 line - just use reduce with starting sum 0
def ascii_value(string)
  string.each_char.reduce(0) {|sum,char| sum += char.ord }
end


p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
