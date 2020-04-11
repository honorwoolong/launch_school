VALID_CHOICES = {
  r: 'Rock', p: 'Paper', sc: 'Scissors', sp: 'Spock', l: 'Lizard'
}.freeze

WIN_OPTIONS = {
  Rock: %w(Scissors Lizard),
  Paper: %w(Rock Spock),
  Scissors: %w(Paper Lizard),
  Spock: %w(Rock Scissors),
  Lizard: %w(Paper Spock)
}.freeze

def prompt(message)
  puts "=> #{message}"
end

def display_result(player, computer)
  if WIN_OPTIONS[player.to_sym].include?(computer)
    prompt('You Won!!')
  elsif WIN_OPTIONS[computer.to_sym].include?(player)
    prompt('You lose!!')
  else
    prompt("It's a tie!!")
  end
end

prompt('Welcome to RPSSL game!!!')

get_name = ''
loop do
  prompt('What is your name?')
  get_name = gets.chomp
  break unless get_name.empty?
  prompt('Hmm...please type your name.')
end

prompt("Hello, #{get_name}. Please follow below instruction.")
puts '-------------------------------------'
display_move_option = VALID_CHOICES.each { |k, v| puts "#{k}: #{v}" }
puts '-------------------------------------'
user_score = 0
pc_score = 0
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
  update_score =
    if WIN_OPTIONS[user_choice.to_sym].include?(pc_choice)
      user_score += 1
    elsif WIN_OPTIONS[pc_choice.to_sym].include?(user_choice)
      pc_score += 1
    end
  prompt("Player : CPU = #{user_score} : #{pc_score}")
  puts '-------------------------------------'
  break if user_score == 5 || pc_score == 5
end

prompt('You WON!! Good job!!') if user_score == 5
prompt('You LOSE!! Try harder next time lol!!') if pc_score == 5
