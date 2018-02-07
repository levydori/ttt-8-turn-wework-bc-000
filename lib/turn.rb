
def display_board(board)
  i = 0 
  while i < 9
    print " #{board[i]} "
    if ( i + 1 ) % 3 == 0
      puts ""
      puts "-----------"
    else 
      print "|" 
  end
end

display_board([" "," "," "," "," "," "," "," "," "])