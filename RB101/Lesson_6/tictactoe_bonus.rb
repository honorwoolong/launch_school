require 'pry'

# 1 display the board
# 2 player place the piece
# 3 computer place the piece
  # if player has 2 squares marked, computer must pick the 3rd square
  # else put square randomly
# 4 continue until someone won 5 games
  # display score
  # restart the game
  # the one won the game adding one score
  # stop until someone won 5 times
# 5 if game is tie, go back to #2
# 6 play again? if yes, go back to #1
# 7 If no, goodbye to the game

INITIAL_MARKER = ' '.freeze
PLAYER_MARKER = 'O'.freeze
COMPUTER_MARKER = 'X'.freeze
WIN_LINE = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
           [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
           [[1, 5, 9], [3, 5, 7]].freeze

def prompt(msg)
  puts "=> #{msg}"
end

def joinor(arr, mid = ', ', last = 'or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{last} ")
  else
    arr.join(mid).insert(-2, last + ' ')
  end
end

def initial_board
  board = {}
  (1..9).each { |num| board[num] = INITIAL_MARKER }
  board
end

# rubocop:disable Metrics/MethodLength, Metric/AbcSize
def update_board(brd, p_point, c_point)
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
  prompt "Player : Computer = #{p_point} : #{c_point}"
end
# rubocop:enable Metrics/MethodLength

def left_square(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_place_piece(brd)
  square = ''
  loop do
    prompt "Choose a position to place a piece: #{joinor(left_square(brd))}"
    square = gets.chomp.to_i
    break if left_square(brd).include?(square)
    prompt 'Please choose a valid number!'
  end
  brd[square] = PLAYER_MARKER
end

def computer_place_piece(brd)
  arr = WIN_LINE.select { |line| 
        brd.values_at(*line).count(PLAYER_MARKER) == 2 &&
        brd.values_at(*line).count(INITIAL_MARKER) == 1
        }
  if arr != []
    arr_sub = arr.sample
    sub_index = brd.values_at(*arr_sub).index(INITIAL_MARKER)
    defense_key = arr_sub[sub_index]
    brd[defense_key] = COMPUTER_MARKER
  else
    brd[left_square(brd).sample] = COMPUTER_MARKER
  end
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
player_score = 0
computer_score = 0
loop do
  loop do
    board = initial_board
    update_board(board, player_score, computer_score)
    loop do
      if left_square(board).empty?
        prompt "It's a tie! Press enter to continue!"
        answer = gets.chomp
        board = initial_board if answer.empty?
      else
        update_board(board, player_score, computer_score)
        player_place_piece(board)
        break if someone_won?(board)
        computer_place_piece(board)
        break if someone_won?(board)
      end
    end
    player_score += 1 if winner_lines(board) == 'Player'
    computer_score += 1 if winner_lines(board) == 'Computer'
    update_board(board, player_score, computer_score)
    break if player_score >= 5 || computer_score >= 5
  end
  
  prompt 'Player won the game!!' if player_score == 5
  prompt 'Computer won the game!!' if computer_score == 5

  prompt 'Do you want to play again?(y/n)'
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
  player_score = 0
  computer_score = 0
end

prompt 'Thank you for playing the game!! Goodbye!'
