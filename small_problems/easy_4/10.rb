
def integer_to_string(num)
  digits = { 1 => '1', 2 => '2', 3 => '3',
  4 => '4', 5 => '5', 6 => '6', 
  7 => '7', 8 => '8', 9 => '9', 0 => '0'
  }
  
  num_digits = 0
  test = num
  while test > 0
    test = test / 10
    num_digits += 1
  end
  num_digits = 1 if num == 0

  string = ''
  test = num
  remainder = nil
  num_digits.times do
    remainder = test % 10
    string.prepend(digits[remainder])
    test = test / 10

  end

  string
end

def signed_integer_to_string(int)
  return '+' + integer_to_string(int) if int.positive?
  return '-' + integer_to_string(-int) if int.negative?
  return '0' if int.zero?
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
