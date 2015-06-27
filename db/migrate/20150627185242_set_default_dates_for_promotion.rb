class SetDefaultDatesForPromotion < ActiveRecord::Migration
  def change
    change_column :promotions, :starts_at, :datetime, null: false, default: Time.now
    change_column :promotions, :ends_at, :datetime, null: false, default: Time.now + 1.day
  end
end
