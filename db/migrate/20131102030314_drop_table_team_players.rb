class DropTableTeamPlayers < ActiveRecord::Migration
  def change
    drop_table :team_players
  end
end
