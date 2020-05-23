def integer_to_string(number)
  string = number.digits.reverse.join
end

def signed_integer_to_string(number)
  if number < 0
    "-#{integer_to_string(number.abs)}"
  elsif number > 0
    "+#{integer_to_string(number)}"
  else
    integer_to_string(number)
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'