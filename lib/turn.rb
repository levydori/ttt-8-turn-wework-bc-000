
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