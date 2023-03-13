

def real_palindrome?(string)
  alpha_nums = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a
  alphas_only = string.downcase.chars.select { |c| alpha_nums.include?(c) }
  alphas_only == alphas_only.reverse
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
