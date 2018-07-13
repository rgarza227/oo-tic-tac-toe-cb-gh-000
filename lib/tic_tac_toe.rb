class toc_tac_toe

  def initialize(board = [" "," "," "," "," "," "," "," "," "])
    @board = board
  end

  def win_combinations = [
    #Horizontal
    [0,1,2],
    [3,4,5],
    [6,7,8],
    #Vertical
    [0,3,6],
    [1,4,7],
    [2,5,8],
    #Diagonal
    [0,4,8],
    [2,4,6]
  ]

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index(input)
    input = input.to_i
    index = input - 1
  end

  def move(index,token = "X")
    @board[index] = token
  end
  
  def position_taken?(index)
    if @board[index] == "X" || @board[index] == "O"
      true
    else
      false
    end
  end

  def valid_move?(index)
    if index.between?(0,8)
      if position_taken?
        false
      else
        true
      end
    else
      false
    end
  end

  def turn
    puts "Enter 1-9:"
    input = gets.strip
    index = input_to_index(input)

    if valid_move?(index)
      move(index,"X")###########
      display_board
    else
      puts "Invalid move. Try Again."
      turn
    end
  end

  def turn_count
    @board.count{ |token| token == "X" || token == "O"}
  end
  
      
  
end # TIC TAC TOE CLASS
