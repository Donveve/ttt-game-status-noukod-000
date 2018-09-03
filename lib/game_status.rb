# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #Top row
  [3,4,5], #Middle row
  [6,7,8], #Bottom row
  [0,3,6], #Left column
  [1,4,7], #Middle column
  [2,5,8], #Right column
  [0,4,8], #Left start diagonal
  [2,4,6]  #Right start diagonal
]
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
  draw?(board) || won?(board)
  full?(board)
end
def winner(board)
  if won?(board)
   return board[won?(board)[0]]
  end
end
