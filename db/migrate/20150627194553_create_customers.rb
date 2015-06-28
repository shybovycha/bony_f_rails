class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :profile_picture_url
      t.string :facebook_id

      t.timestamps null: false
    end
  end
end
