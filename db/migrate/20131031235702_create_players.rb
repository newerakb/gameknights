class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :nickname, null: false
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
    add_index :players, :nickname, unique: true
  end
end
