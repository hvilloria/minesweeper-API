class Board < ApplicationRecord
  MAX_CELLS_QUANTITY = 81
  
  belongs_to :game
  has_many :squares

end
