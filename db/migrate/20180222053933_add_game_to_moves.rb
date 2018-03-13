class AddGameToMoves < ActiveRecord::Migration[5.0]
  def change
  	add_column :moves, :game_id, :integer
  	add_index :moves, :game_id
  end
end
