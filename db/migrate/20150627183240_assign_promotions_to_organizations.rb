class AssignPromotionsToOrganizations < ActiveRecord::Migration
  def change
    add_column :promotions, :organization_id, :integer, null: false
  end
end
