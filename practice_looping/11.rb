def odd_or_even(num)
  if num.odd?
    "odd"
  elsif num.even?
    "even"
  end
end

count = 1

loop do
  puts "#{count} is #{odd_or_even(count)}!"
  break if count >= 5
  count += 1
end
