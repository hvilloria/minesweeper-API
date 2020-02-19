class AddKindToSquare < ActiveRecord::Migration[5.2]
  def change
    add_column :squares, :kind, :string, default: 'safe_cell'
  end
end
