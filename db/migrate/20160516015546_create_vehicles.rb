class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :license
      t.string :colour
      t.string :make
      t.string :model
      t.integer :year
      t.boolean :status

      t.timestamps null: false
    end
  end
end
