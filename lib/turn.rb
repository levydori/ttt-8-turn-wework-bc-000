
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

display_board([" "," "," "," "," "," "," "," "," "])

def valid_move?(board, pos)
  if !pos.between(0,8) || position_taken?(board,pos)
    return false
  else
    return true
end

def position_taken?(board, pos)
  if ["", " ",nil].include(board[pos])
    return false
  else
    return true
  end
end