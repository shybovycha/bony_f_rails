class CreateBeacons < ActiveRecord::Migration
  def change
    create_table :beacons do |t|
      t.string :uuid, null: false
      t.string :owner, null: false
      t.references :beaconic, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
