class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.integer :game_id, null: false
      t.integer :team_id, null: false
      t.date :date, null: false
      t.integer :length

      t.timestamps
    end
    add_index :sessions, :game_id
    add_index :sessions, :team_id
    add_index :sessions, :date
  end
end
