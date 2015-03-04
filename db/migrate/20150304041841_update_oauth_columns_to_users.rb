class UpdateOauthColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    rename_column :users, :provder, :provider
    rename_column :users, :nickname, :full_name
  end
end
