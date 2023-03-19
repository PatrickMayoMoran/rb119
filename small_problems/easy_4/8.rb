def string_to_integer(string)
  justifier = 48
  num = 0
  string.chars.reverse.each_with_index { |c,i| num += (c.ord-justifier) * 10 ** i }
  num

end

def string_to_signed_integer(str)
  chars = str.chars
  case chars[0]
  when '-' then  -(string_to_integer(str[1..-1]))
  when '+' then string_to_integer(str[1..-1])
  else          string_to_integer(str)
  end

end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
