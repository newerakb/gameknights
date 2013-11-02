class CreateGameMechanics < ActiveRecord::Migration
  def change
    create_table :game_mechanics do |t|
      t.integer :game_id, null: false
      t.integer :mechanic_id, null: false

      t.timestamps
    end
    add_index :game_mechanics, [:game_id, :mechanic_id], unique: true
    add_index :game_mechanics, :game_id
    add_index :game_mechanics, :mechanic_id
  end
end
