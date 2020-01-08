class TicTacToe
  def initialize(board = nil)
    @board = board || Array.new(9," ")
  end
  def WIN_COMBINATIONS = [
      [0,1,2],
      [3,4,5],
      [7,8,9],
      [1,4,7],
      [2,5,8],
      [3,6,9],
      [1,5,9],
      [3,5,7]
    ]
  end
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  def input_to_index
    turn_count % 2 == 0 ? "X" : "O"
  end
  def move
    @board.count{|token| token == "X" || token == "O"}
  end
end
