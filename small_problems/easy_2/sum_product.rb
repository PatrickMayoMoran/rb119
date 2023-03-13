def prompt(msg)
  puts ">> #{msg}"
end

prompt "Please enter an integer greater than 0:"
num = gets.chomp.to_i
prompt "Enter 's' to compute the sum, 'p' to compute the product"
operation = gets.chomp.downcase

result = case operation
           when 's'
             (1..num).reduce(:+)
           when 'p'
             (1..num).reduce(:*)
         end

if operation == 's'
  prompt "The sum of the integers between 1 and #{num} is #{result}"
elsif operation == 'p'
  prompt "The product of the integers between 1 and #{num} is #{result}"
else
  prompt "Not a valid choice! Program OVER"
end
