class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.date :time
      t.integer :clicks, default: 0

      t.timestamps
    end
  end
end
