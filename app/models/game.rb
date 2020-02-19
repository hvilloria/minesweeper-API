class Game < ApplicationRecord
  has_one :board

  after_create :generate_board

  def generate_board
    Board.create
  end
end
