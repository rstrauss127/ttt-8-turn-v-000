def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  index.between?(0, 8) && (board[index] == "" || board[index] == " " || board[index] == nil)
end

def input_to_index(index)
  index = index.to_i - 1  
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"


  while !(valid_move?(board, index))
    puts "Please enter 1-9:"
    index = gets.strip
    input_to_index(index)
  end

end
