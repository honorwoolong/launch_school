VALID_CVALID_CHOICES = %w(Rock Paper Scissors).freeze

def prompt(message)
  puts "=> #{message}"
end

def result?(first, second)
  (first == 'Rock' && second == 'Scissors') ||
    (first == 'Paper' && second == 'Rock') ||
    (first == 'Scissors' && second == 'Paper')
end

def display_result(player, computer)
  if result?(player, computer)
    prompt('You Won!!')
  elsif result?(computer, player)
    prompt('You lose!!')
  else
    prompt("It's a tie!!")
  end
end

prompt('Welcome to ROCK/PAPER/SCISSORS game!!!')

name = ''
loop do
  prompt('What is your name?')
  name = gets.chomp
  break unless name.empty?
  prompt('Hmm...please type your name.')
end

prompt("Hello, #{name}. Please follow below instruction.")

loop do
  user_choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}!")
    user_choice = gets.chomp.capitalize!
    if VALID_CHOICES.include?(user_choice)
      prompt("Player: #{user_choice}")
      break
    else
      prompt('Please type carefully...')
    end
  end

  pc_choice = VALID_CHOICES.sample
  prompt("CPU: #{pc_choice}")

  display_result(user_choice, pc_choice)

  prompt('Do you want to play again? Any key to continue, type q to exit.')
  answer = gets.chomp.downcase
  break if answer == 'q'
  prompt("#{name}, let's go battle again!!")
end

prompt('Thank you for playing! Bye!!')
