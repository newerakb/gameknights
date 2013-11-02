class CreatePlayerSessions < ActiveRecord::Migration
  def change
    create_table :player_sessions do |t|
      t.integer :player_id, null: false
      t.integer :session_id, null: false
      t.integer :rank, null: false
      t.decimal :score

      t.timestamps
    end
    add_index :player_sessions, [:player_id, :session_id], unique: true
    add_index :player_sessions, :player_id
    add_index :player_sessions, :session_id
    add_index :player_sessions, :rank
  end
end
