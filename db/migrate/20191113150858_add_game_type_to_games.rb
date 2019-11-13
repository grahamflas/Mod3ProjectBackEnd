class AddGameTypeToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :game_type, :string
  end
end
