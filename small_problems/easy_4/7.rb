def string_to_integer(string)
  justifier = 48
  num = 0
  string.chars.reverse.each_with_index { |c,i| num += (c.ord-justifier) * 10 ** i }
  num

end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
