class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name, null: false
      t.integer :bgg_id
      t.integer :min_players, null: false
      t.integer :max_players, null: false
      t.integer :length, null: false
      t.string :description
      t.string :url

      t.timestamps
    end
    add_index :games, :bgg_id, unique: true
    add_index :games, :name, unique: true
  end
end
