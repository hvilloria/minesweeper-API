class Square < ApplicationRecord

  enum kind: { mine: 'mine', safe_cell: 'safe_cell' }
  belongs_to :board
end
