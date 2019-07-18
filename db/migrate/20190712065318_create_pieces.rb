class CreatePieces < ActiveRecord::Migration[5.2]
  def change
    create_table :pieces do |t|
      t.string :piece_type
      t.string  :color
      t.string :image
      t.integer :x_location
      t.integer :y_location
      t.integer :game_id
      t.integer :player_id
      t.boolean :taken_piece

      t.timestamps
    end
    add_index :piece_type, :x_location, :y_location, :game_id, :player_id
  end
end
