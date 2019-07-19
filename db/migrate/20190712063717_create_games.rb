class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :black_player_id
      t.integer :white_player_id
      t.integer :losing_player_id
      t.integer :turn_player_id
      t.boolean :draw      

      t.timestamps
    end
    add_index :games, :black_player_id
    add_index :games, :white_player_id
    add_index :games, :losing_player_id
    add_index :games, :turn_player_id
  end
end
