class AddProfileOptionsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :interests, :string
    add_column :users, :quotes, :string
    add_column :users, :gender, :string
    add_column :users, :hometown, :string
  end
end
