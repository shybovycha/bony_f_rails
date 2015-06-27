class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.text :description
      t.datetime :starts_at
      t.datetime :ends_at

      t.timestamps null: false
    end
  end
end
