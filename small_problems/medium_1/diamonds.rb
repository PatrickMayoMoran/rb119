def diamonds(num)
  diamond = '*'

  # Top to middle of diamond
  1.upto(num) do |i|
    next if i.even?
    puts (diamond * i).center(num)
  end

  # Lower half - does not execute if num is 1
  (num-1).downto(1) do |i|
    next if i.even?
    puts (diamond * i).center(num)
  end
end

diamonds(1)
diamonds(3)
diamonds(9)
diamonds(41)
