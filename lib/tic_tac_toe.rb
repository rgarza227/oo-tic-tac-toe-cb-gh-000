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
  
end # TIC TAC TOE CLASS


