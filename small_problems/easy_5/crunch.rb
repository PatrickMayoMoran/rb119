def crunch(string)
  new = ''
  string.each_char.with_index do |c,i|
    new << c unless string[i] == string[i+1]
  end

  new
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
