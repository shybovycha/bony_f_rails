class AddProfileFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :gender, :char, null: false, default: 'm'
    add_column :users, :photo_url, :string
  end
end
