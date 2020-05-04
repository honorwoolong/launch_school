require 'pry-byebug'
SUITS = %w(H D S C).freeze
VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A).freeze
MEAN = { 'H' => 'Heart', 'D' => 'Diamonds',
         'C' => 'Club', 'S' => 'Spades' }.freeze

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def prompt(msg)
  puts "=> #{msg}"
end

def hit_cards!(arr, cards)
  arr << cards.pop
end

# rubocop:disable Metrics/MethodLength, Metric/AbcSize
def cal_values(card)
  total_value = 0
  card.each do |arr|
    if arr[1].to_i != 0
      total_value += arr[1].to_i
    elsif arr[1] == 'A'
      total_value += 11
      total_value -= 10 if total_value > 21
    else
      total_value += 10
    end
  end
  total_value
end

def initial_display_cards(card1, card2)
  system 'clear'
  puts 'A: Ace, J: Jack, Q: Queen, K: King'
  puts 'Dealer:'
  puts "   Card 1: #{MEAN[card1[0][0]]} - #{card1[0][1]}"
  puts '   Card 2: ???'
  puts '   Total_value: ???'
  puts 'Player:'
  card2.each do |arr|
    puts "   Card #{card2.index(arr) + 1}: #{MEAN[arr[0]]} - #{arr[1]}"
  end
  puts "   Total_value: #{cal_values(card2)}"
end

def display_cards(card1, card2)
  system 'clear'
  puts 'A: Ace, J: Jack, Q: Queen, K: King'
  puts 'Dealer:'
  card1.each do |arr|
    puts "   Card #{card1.index(arr) + 1}: #{MEAN[arr[0]]} - #{arr[1]}"
  end
  puts "   Total_value: #{cal_values(card1)}"
  puts 'Player:'
  card2.each do |arr|
    puts "   Card #{card2.index(arr) + 1}: #{MEAN[arr[0]]} - #{arr[1]}"
  end
  puts "   Total_value: #{cal_values(card2)}"
end

def display_result(card1, card2)
  if busted?(card1)
    prompt 'You WON!!'
  elsif busted?(card2)
    prompt 'You LOSE!'
  elsif cal_values(card2) > cal_values(card1)
    prompt 'You WON!!'
  elsif cal_values(card2) < cal_values(card1)
    prompt 'You LOSE!'
  else
    prompt 'It is a tie!'
  end
end
# rubocop:enable Metrics/MethodLength

def busted?(card)
  cal_values(card) > 21
end

def bj?(card)
  cal_values(card) == 21
end

def dealer_stay?(card)
  cal_values(card) >= 17
end

def play_again?(ans)
  puts '--------------------------'
  prompt 'Do you want to play again? (y or n)'
  ans = gets.chomp
  ans.downcase.start_with?('y')
end

# initialize deck
cards = initialize_deck
operation = ''
answer = ''
loop do
  # deal cards
  player_cards = []
  dealer_cards = []
  2.times do
    hit_cards!(player_cards, cards)
    hit_cards!(dealer_cards, cards)
  end
  initial_display_cards(dealer_cards, player_cards)
  # player turn
  loop do
    prompt 'Hit or Stay?'
    operation = gets.chomp
    hit_cards!(player_cards, cards) if operation.casecmp?('hit')
    initial_display_cards(dealer_cards, player_cards)
    break if operation.casecmp?('stay') || busted?(player_cards)
  end
  display_cards(dealer_cards, player_cards)
  # dealer turn
  loop do
    break if dealer_stay?(dealer_cards) || busted?(player_cards)
    hit_cards!(dealer_cards, cards)
    display_cards(dealer_cards, player_cards)
  end
  # compare cards and declare winner
  display_result(dealer_cards, player_cards)

  break unless play_again?(answer)
end

prompt 'Thank you for playing the game! Bye!'
