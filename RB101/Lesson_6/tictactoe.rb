require 'pry'

# 1 display the board
# 2 player place the piece
# 3 computer place the piece
# 4 continue until someone won
# 5 if game is tie, go back to #2
# 6 play again? if yes, go back to #1
# 8 If no, goodbye to the game

INITIAL_MARKER = ' '.freeze
PLAYER_MARKER = 'O'.freeze
COMPUTER_MARKER = 'X'.freeze
WIN_LINE = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
           [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
           [[1, 5, 9], [3, 5, 7]].freeze

def prompt(msg)
  puts "=> #{msg}"
end

def initial_board
  board = {}
  (1..9).each { |num| board[num] = INITIAL_MARKER }
  board
end

# rubocop:disable Metrics/MethodLength, Metric/AbcSize
def update_board(brd)
  system 'clear'
  prompt "player is #{PLAYER_MARKER}, computer is #{COMPUTER_MARKER}"
  puts '     |     |'
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts '     |     |'
  puts '-----+-----+-----'
  puts '     |     |'
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts '     |     |'
  puts '-----+-----+-----'
  puts '     |     |'
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts '     |     |'
end
# rubocop:enable Metrics/MethodLength

def left_square(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_place_piece(brd)
  square = ''
  loop do
    prompt 'Choose the square (1-9):'
    square = gets.chomp.to_i
    break if left_square(brd).include?(square)
    prompt 'Please choose a valid number!'
  end
  brd[square] = PLAYER_MARKER
end

def computer_place_piece(brd)
  brd[left_square(brd).sample] = COMPUTER_MARKER
  brd
end

def winner_lines(brd)
  WIN_LINE.each do |line|
    return 'Player' if brd.values_at(*line).count(PLAYER_MARKER) == 3
    return 'Computer' if brd.values_at(*line).count(COMPUTER_MARKER) == 3
  end
  nil
end

def someone_won?(brd)
  winner_lines(brd).class == String
end

answer = ''
board = {}
loop do
  board = initial_board
  loop do
    if left_square(board).empty?
      prompt "It's a tie! Press Enter to continue!"
      answer = gets.chomp
      board = initial_board if answer.empty?
    else
      update_board(board)
      player_place_piece(board)
      break if someone_won?(board)
      computer_place_piece(board)
      break if someone_won?(board)
    end
  end

  update_board(board)
  prompt "#{winner_lines(board)} won the game!!"

  prompt 'Do you want to play again?(y/n)'
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt 'Thank you for playing the game!! Goodbye!'
