class Board < ApplicationRecord
  MAX_LENGTH_QUANTITY = 9
  
  belongs_to :game
  has_many :squares

  after_create :generate_squares

  def generate_squares
    MAX_LENGTH_QUANTITY.times do |x|
      MAX_LENGTH_QUANTITY.times do |y|
        Square.create(x_pos: x, y_pos: y, board: self)
      end
    end
  end

  private

  def mines_left
    @mines_left = 10
  end
end
