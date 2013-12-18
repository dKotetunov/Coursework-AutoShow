class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.integer :car_id
      t.integer :phone
      t.string :address
      t.string :name

      t.timestamps
    end
  end
end
