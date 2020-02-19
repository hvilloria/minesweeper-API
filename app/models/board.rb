class Board < ApplicationRecord
  MAX_LENGTH_QUANTITY = 9
  MAX_MINES_QUANTITY = 10
  
  belongs_to :game
  has_many :squares

  after_create :generate_squares

  def generate_squares
    MAX_LENGTH_QUANTITY.times do |x|
      MAX_LENGTH_QUANTITY.times do |y|
        Square.create(x_pos: x, y_pos: y, board: self)
      end
    end
    minefield
  end

  def minefield
    mines_planted = 0
    while mines_planted < MAX_MINES_QUANTITY
      x_pos = rand(0..8)
      y_pos = rand(0..8)
      square = Square.find_by(x_pos: x_pos, y_pos: y_pos, board: self)
      next if square.mine?
      square.update!(kind: 'mine')
      mines_planted += 1
    end
  end

  def mines
    squares.mine
  end
end
