class CreateTeamPlayers < ActiveRecord::Migration
  def change
    create_table :team_players do |t|
      t.integer :team_id, null: false
      t.integer :player_id, null: false
      t.string :player_alias
      t.boolean :display_real_name, :default => false
      t.boolean :admin, :default => false
      t.boolean :owner, :default => false

      t.timestamps
    end
    add_index :team_players, [:team_id, :player_id], unique: true
    add_index :team_players, :team_id
    add_index :team_players, :player_id
  end
end
