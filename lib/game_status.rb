# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def won?(board)
  WIN_COMBINATIONS.find do |combo|
    # original argument "position_taken?(board, combo)"
    position_taken?(board, combo[0]) &&
    board[combo[0]] == board[combo[1]] &&
    board[combo[0]] == board[combo[2]]
  end
end
def full?(board)
  board.all? do |index|
    index != " "
  end
end
def draw?(board)
  full?(board)
  !(won?(board))
end
def over?(board)
  won?(board)
  !full?(board)
end
def winner(board)
  if won?(board)
   return board[won?(board)[0]]
  end
end
