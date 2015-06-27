class AddPromotionIdToChallenge < ActiveRecord::Migration
  def change
    add_column :challenges, :promotion_id, :integer, null: false
  end
end
