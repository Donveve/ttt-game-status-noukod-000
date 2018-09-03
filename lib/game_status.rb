# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
board = ["X", "X", "O", "X", "O", "X", "X", "X", "O"]


WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
  ]

def won?(board)
  winner = nil
  WIN_COMBINATIONS.each do |combo|
    if combo.all? {|idx| board[idx] == "X"}
      winner = combo
    elsif combo.all? {|idx| board[idx] == "O"}
      winner = combo
    else
      false
    end
  end
  if winner != nil
    winner
  else
    false
  end
end

def full?(board)
  board.all? {|token| token == "X" || token == "O"}
end

def draw?(board)
  if full?(board)
    if won?(board) == false
      true
    else
      false
    end
  else
    false
  end
end

def over?(array3)
  if full?(array3) || !(won?(array3)) || draw?(array3)
    puts "GAME OVER"
    return false
  else
    puts "it ain't over till it's over baby!"
    return true
  end
end
puts over?(board)

def winner(board)
  winner = nil
  WIN_COMBINATIONS.each do |combo|
    if combo.all? {|idx| board[idx] == "X"}
      winner = "X"
    elsif combo.all? {|idx| board[idx] == "O"}
      winner = "O"
    else
    end
  end
  winner
end

winner(board)
