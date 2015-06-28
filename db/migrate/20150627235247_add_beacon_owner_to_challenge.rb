class AddBeaconOwnerToChallenge < ActiveRecord::Migration
  def change
    add_column :challenges, :beacon_owner, :string
  end
end
