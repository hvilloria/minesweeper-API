class CreateSquares < ActiveRecord::Migration[5.2]
  def change
    create_table :squares do |t|
      t.integer :x_pos
      t.integer :y_pos
      t.references :board, foreign_key: true

      t.timestamps
    end
  end
end
