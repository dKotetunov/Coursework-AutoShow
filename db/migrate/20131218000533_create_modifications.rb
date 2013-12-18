class CreateModifications < ActiveRecord::Migration
  def change
    create_table :modifications do |t|
      t.integer :car_id
      t.integer :length
      t.float :width
      t.float :height
      t.integer :seats
      t.integer :weight
      t.integer :max_speed
      t.string :type_of_engine
      t.float :engine_capacity
      t.string :fuel_supply_system
      t.integer :fuel_consumption

      t.timestamps
    end
  end
end
