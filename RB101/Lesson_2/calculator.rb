def prompt(string)
  puts "=> #{string}"
end

def valid_number?(num)
  num.to_i != 0
end

def op_print(choice)
  case choice
  when '1'
    'Adding'
  when '2'
    'Substracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

def operant(choice, number1, number2)
  case choice
  when '1'
    number1.to_i + number2.to_i
  when '2'
    number1.to_i - number2.to_i
  when '3'
    number1.to_i * number2.to_i
  when '4'
    number1.to_f / number2.to_f
  end
end


prompt('Welcome to Woolong Calculator!')

name = ''

loop do
  prompt('What\'s your name?')
  name = gets.chomp
  break unless name.empty?
  prompt('Hmm...please provide it...')
end

prompt("Hi! #{name}!!")

loop do
  num1 = ''
  loop do
    prompt('Give 1st number!')
    num1 = gets.chomp
    break if valid_number?(num1)
    prompt('It\'s not a valid number!')
  end

  num2 = ''
  loop do
    prompt('Give 2nd number!')
    num2 = gets.chomp
    break if valid_number?(num2)
    prompt('It\'s not a valid number!')
  end

  operator_prompt = <<-MSG
  Do you want to add, substract, multiply or divide?
      1) Add
      2) Substract
      3) Multiply
      4) Divide
  MSG

  op = ''
  loop do
    prompt(operator_prompt)
    op = gets.chomp
    break if %w(1 2 3 4).include?(op)
    promp('Please check your option of operator!')
  end

  prompt("#{op_print(op)} the two numbers...")
  prompt("The result is #{operant(op, num1, num2)}!!")
  prompt('Do you want to continue?(Y to continue calculating)')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
  prompt('Let\'s keep going!')
end

prompt("Goodbye! My Love #{name}!")
