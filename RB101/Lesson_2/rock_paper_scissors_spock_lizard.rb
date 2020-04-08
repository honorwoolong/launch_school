VALID_CHOICES = {
  r: 'Rock', p: 'Paper', sc: 'Scissors', sp: 'Spock', l: 'Lizard'
}.freeze

def prompt(message)
  puts "=> #{message}"
end

def result?(first, second)
  (first == 'Rock' && second == 'Scissors') ||
    (first == 'Rock' && second == 'Lizard') ||
    (first == 'Lizard' && second == 'Spock') ||
    (first == 'Lizard' && second == 'Paper') ||
    (first == 'Spock' && second == 'Scissors') ||
    (first == 'Spock' && second == 'Rock') ||
    (first == 'Scissors' && second == 'Paper') ||
    (first == 'Scissors' && second == 'Lizard') ||
    (first == 'Paper' && second == 'Rock') ||
    (first == 'Paper' && second == 'Spock')
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

prompt('Welcome to RPSSL game!!!')

name = ''
loop do
  prompt('What is your name?')
  name = gets.chomp
  break unless name.empty?
  prompt('Hmm...please type your name.')
end

prompt("Hello, #{name}. Please follow below instruction.")
puts '-------------------------------------'
VALID_CHOICES.each { |k, v| puts "#{k}: #{v}" }
puts '-------------------------------------'
player_score = 0
computer_score = 0
loop do
  user_choice = ''
  loop do
    prompt('Choose one: r, p, sc, sp or l')
    user_choice = gets.chomp.downcase

    if VALID_CHOICES.values.include?(VALID_CHOICES[user_choice.to_sym])
      prompt("Player: #{VALID_CHOICES[user_choice.to_sym]}")
      user_choice = VALID_CHOICES[user_choice.to_sym]
      break
    else
      prompt('Please type carefully...')
    end
  end

  pc_choice = VALID_CHOICES.values.sample
  prompt("CPU: #{pc_choice}")

  display_result(user_choice, pc_choice)
  player_score += 1 if result?(user_choice, pc_choice)
  computer_score += 1 if result?(pc_choice, user_choice)
  prompt("Player : CPU = #{player_score} : #{computer_score}")
  puts '-------------------------------------'

  break if player_score == 5 || computer_score == 5
end

prompt('You WON!! Good job!!') if player_score == 5
prompt('You LOSE!! Try harder next time lol!!') if computer_score == 5
