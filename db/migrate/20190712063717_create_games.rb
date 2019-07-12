class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :black_player_id
      t.integer :white_player_id
      t.integer :losing_player_id
      t.integer :turn_player_id
      draw      :boolean

      t.timestamps
    end
    add_index :games, :black_player_id, :white_player_id, :losing_player_id, :turn_player_id
  end
end
