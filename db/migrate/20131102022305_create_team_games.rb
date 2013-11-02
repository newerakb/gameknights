class CreateTeamGames < ActiveRecord::Migration
  def change
    create_table :team_games do |t|
      t.integer :team_id
      t.integer :game_id

      t.timestamps
    end
    add_index :team_games, [:team_id, :game_id], unique: true
    add_index :team_games, :team_id
    add_index :team_games, :game_id
  end
end
