say_hello = true
greetings = 0

while say_hello
  greetings += 1
  puts 'Hello!'
  say_hello = false if greetings >= 5
end
