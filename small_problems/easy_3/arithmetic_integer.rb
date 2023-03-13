def prompt(msg)
 puts "==> #{msg}"
end

prompt "Please enter the first number:"
first = gets.chomp.to_i
prompt "Please enter the second number:"
second = gets.chomp.to_i

prompt "#{first} + #{second} = #{first + second}"
prompt "#{first} - #{second} = #{first - second}"
prompt "#{first} * #{second} = #{first * second}"
prompt "#{first} / #{second} = #{first / second}"
prompt "#{first} % #{second} = #{first % second}"
prompt "#{first} ** #{second} = #{first ** second}"

%i(+ - * / % **).each do |op|
  prompt "#{first} #{op} #{second} = #{[first, second].inject(op)}"
end
