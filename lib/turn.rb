
def display_board(board)
  i = 0 
  while i < 9
    print " #{board[i]} "
    if ( i + 1 ) % 3 == 0
      puts ""
      if i < 8
       puts "-----------"
      end
    else 
      print "|" 
    end
    i += 1
  end
end

def valid_move?(board, pos)
  if !pos.between?(0,8) || position_taken?(board,pos)
    return false
  else
    return true
  end
end

def position_taken?(board, pos)
  if ["", " ",nil].include?(board[pos])
    return false
  else
    return true
  end
end

def input_to_index(pos)
  return pos.to_i - 1
end

def move(board, pos, token = "X")
  board[pos] = token
end

def turn(board)
  puts "Please enter 1-9:"
  pos = gets.strip
  pos = input_to_index(pos)
  while valid_move?(board, pos) == false
    puts "Not a valud move, please try again"
    pos = gets.strip
    pos = input_to_index(pos)
  end
  move(board,pos)
  display_board(board)
end