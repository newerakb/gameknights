class AddTeamToPlayers < ActiveRecord::Migration
  def change
    remove_index :players, :nickname
    remove_column :players, :nickname
    remove_column :players, :first_name
    remove_column :players, :last_name
    add_column :players, :team_id, :integer
    add_index :players, :team_id
    add_column :players, :alias, :string
    add_column :players, :display_real_name, :boolean, default: false
    add_column :players, :team_admin, :boolean, default: false
    add_column :players, :team_owner, :boolean, default: false
  end
end
