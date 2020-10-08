require 'pry'

class TicTacToe
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end

WIN_COMBINATIONS = [
[0,1,2], #top row
[3,4,5], #middle row
[6,7,8], #bottom row
[0,3,6], #first column
[1,4,7], #second column
[2,5,8], #third column
[0,4,8], #across right
[2,4,6] #across left
]
#binding.pry
def display_board
puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
puts "-----------"
puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
puts "-----------"
puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(position, char)
  @board[position] = char
end

def position_taken?(index_i)
 if @board[index_i] == "X" || @board[index_i] == "O"
   true
 else
   false
 end
end

def valid_move?(index)
  index.between?(0,8) && !position_taken?(index)
end

def turn_count
  turn_number = 0
  @board.each do |space|
    if space == "X" || space == "O"
      turn_number += 1
    end
  turn_number
  end
end



end #end of class TicTacToe
