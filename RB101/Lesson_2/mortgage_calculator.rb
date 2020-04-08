def prompt(message)
  puts "=> #{message}"
end

prompt('Hello, welcome to Mortgage Calculator!')

name = ''
loop do
  prompt('Please tell me your name.')
  name = gets.chomp
  if name.empty?
    prompt('Hmm...please type your name.')
  else
    prompt("Thanks! #{name}")
    break
  end
end

prompt("Good Day! #{name}, there are few questions need your feedback!")

loop do
  prompt('How much is your total mortgage?')
  loan_amount = ''
  loop do
    loan_amount = gets.chomp
    break unless loan_amount.empty? || loan_amount.to_f <= 0
    prompt('Must enter positive number')
  end
  prompt('How many percentage is the Annual Percentage Rate?')
  prompt('(Example: 5 for 5% or 2.5 for 2.5%)')
  apr = ''
  loop do
    apr = gets.chomp
    break unless apr.empty? || apr.to_f <= 0
    prompt('Must enter positive number')
  end
  prompt('How many months is the duration of loan?')
  loan_duration = ''
  loop do
    loan_duration = gets.chomp
    break unless loan_duration.empty? || loan_duration.to_f <= 0
    prompt('Must enter positive number')
  end

  p = loan_amount.to_f
  j = apr.to_f / 12 / 100
  n = loan_duration.to_f
  m = p * (j / (1 - (1 + j)**-n))
  monthly_payment = m.round(2).to_s

  prompt("After calculation...every month #{monthly_payment} dollars!")
  prompt('Do you want to continue Mortgage Calculator?(Y to continue)')
  answer = gets.chomp.downcase
  break if answer != 'y'
end
prompt('Thank you for using Mortage Calculator, bye bye!')
