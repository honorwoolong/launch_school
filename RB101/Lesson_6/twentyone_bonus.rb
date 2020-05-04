require 'pry-byebug'

SUITS = %w(H D S C).freeze
VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A).freeze

def number_select
  prompt 'What number do you want to play as the target?(>= 21)'
  answer = gets.chomp
  prompt 'Please enter a valid number!' if answer.to_i < 21
end

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

# rubocop:disable Metrics/MethodLength, Metric/AbcSize
def total(cards, num)
  # cards = [['H', '3'], ['S', 'Q'], ... ]
  values = cards.map { |card| card[1] }
  total_value = 0
  values.each do |value|
    if value == 'A'
      total_value += 11
    elsif value.to_i.zero? # J, Q, K
      total_value += 10
    else
      total_value += value.to_i
    end
  end
  # correct for Aces
  values.select { |value| value == 'A' }.count.times do
    total_value -= 10 if total_value > num
  end
  total_value
end

# :tie, :dealer, :player, :dealer_busted, :player_busted
def detect_result(dealer_total, player_total, num)
  if player_total > num
    :player_busted
  elsif dealer_total > num
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_result(d_card, p_card, d_total, p_total, d_score, p_score, num)
  puts '=============='
  prompt "Dealer has #{d_card}, for a total of: #{d_total}"
  prompt "Player has #{p_card}, for a total of: #{p_total}"
  puts '=============='
  result = detect_result(d_total, p_total, num)
  case result
  when :player_busted
    prompt 'You busted! Dealer wins!'
    prompt "Dealer : Player = #{d_score} : #{p_score}"
    puts '=============='
  when :dealer_busted
    prompt 'Dealer busted! You win!'
    prompt "Dealer : Player = #{d_score} : #{p_score}"
    puts '=============='
  when :player
    prompt 'You win!'
    prompt "Dealer : Player = #{d_score} : #{p_score}"
    puts '=============='
  when :dealer
    prompt 'Dealer wins!'
    prompt "Dealer : Player = #{d_score} : #{p_score}"
    puts '=============='
  when :tie
    prompt "It's a tie!"
    prompt "Dealer : Player = #{d_score} : #{p_score}"
    puts '=============='
  end
end
# rubocop:enable Metrics/MethodLength

def busted?(total, num)
  total > num
end

def play_again?
  puts '-------------'
  prompt 'Do you want to play again? (y or n)'
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

def someone_won?(d_score, p_score)
  d_score == 5 || p_score == 5
end

loop do
  player_score = 0
  dealer_score = 0
  number = number_select.to_i
  loop do
    break if someone_won?(dealer_score, player_score)
    prompt 'Welcome to the Game!'

    # initialize vars
    deck = initialize_deck
    player_cards = []
    dealer_cards = []
    # initial deal
    2.times do
      player_cards << deck.pop
      dealer_cards << deck.pop
    end

    player_total = total(player_cards, number)
    dealer_total = total(dealer_cards, number)

    prompt "Dealer has #{dealer_cards[0]} and ?"
    prompt "You have: #{player_cards[0]} and #{player_cards[1]}, for a total of #{player_total}."

    # player turn
    loop do
      player_turn = nil
      loop do
        prompt 'Would you like to (h)it or (s)tay?'
        player_turn = gets.chomp.downcase
        break if %w(h s).include?(player_turn)
        prompt "Sorry, must enter 'h' or 's'."
      end

      if player_turn == 'h'
        player_cards << deck.pop
        player_total = total(player_cards, number)
        prompt 'You chose to hit!'
        prompt "Your cards are now: #{player_cards}"
        prompt "Your total is now: #{player_total}"
      end

      break if player_turn == 's' || busted?(player_total, number)
    end
    
    if busted?(player_total, number)
      case detect_result(dealer_total, player_total, number)
      when :player_busted
        dealer_score += 1
      when :dealer_busted
        player_score += 1
      when :player
        player_score += 1
      when :dealer
        dealer_score += 1
      end
      display_result(dealer_cards, player_cards, dealer_total, player_total, dealer_score, player_score, number)
      next
    else
      prompt "You stayed at #{player_total}"
    end

    # dealer turn
    prompt 'Dealer turn...'

    loop do
      break if dealer_total >= (number - 4)
      prompt 'Dealer hits!'
      dealer_cards << deck.pop
      dealer_total = total(dealer_cards, number)
      prompt "Dealer's cards are now: #{dealer_cards}"
    end

    if busted?(dealer_total, number)
      prompt "Dealer total is now: #{dealer_total}"
      case detect_result(dealer_total, player_total, number)
      when :player_busted
        dealer_score += 1
      when :dealer_busted
        player_score += 1
      when :player
        player_score += 1
      when :dealer
        dealer_score += 1
      end
      display_result(dealer_cards, player_cards, dealer_total, player_total, dealer_score, player_score, number)
      next
    else
      prompt "Dealer stays at #{dealer_total}"
    end

    # both player and dealer stays - compare cards!
    case detect_result(dealer_total, player_total, number)
    when :player_busted
      dealer_score += 1
    when :dealer_busted
      player_score += 1
    when :player
      player_score += 1
    when :dealer
      dealer_score += 1
    end
    display_result(dealer_cards, player_cards, dealer_total, player_total, dealer_score, player_score, number)
  end
  break unless play_again?
end

prompt 'Thank you for playing Twenty-One! Good bye!'
