class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nickname, null: false
      t.string :first_name
      t.string :last_name
      t.string :email, null: false
      t.string :password_digest
      t.string :remember_token
      t.boolean :site_admin, default: false

      t.timestamps
    end
    add_index :users, :nickname, unique: true
    add_index :users, :email, unique: true
    add_index :users, :remember_token
  end
end
