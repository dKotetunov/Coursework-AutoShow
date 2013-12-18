class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :color
      t.date :delivery_date
      t.date :date_of_sale
      t.float :price
      t.integer :status_id
      t.integer :buyer_id

      t.timestamps
    end
  end
end
