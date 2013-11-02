class CreateMechanics < ActiveRecord::Migration
  def change
    create_table :mechanics do |t|
      t.string :name, null: false
      t.integer :bgg_id
      t.string :description

      t.timestamps
    end
    add_index :mechanics, :name, unique: true
    add_index :mechanics, :bgg_id, unique: true
  end
end
