class AssignOrganizationToUser < ActiveRecord::Migration
  def change
    add_column :organizations, :user_id, :integer, null: false
  end
end
