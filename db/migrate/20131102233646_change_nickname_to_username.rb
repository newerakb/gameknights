class ChangeNicknameToUsername < ActiveRecord::Migration
  def change
    remove_index :users, :nickname
    remove_column :users, :nickname
    add_column :users, :username, :string
    add_index :users, :username, unique: true
  end
end
