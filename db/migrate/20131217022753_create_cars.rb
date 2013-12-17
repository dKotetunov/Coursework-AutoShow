class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :color
      t.string :delivery_date
      t.string :date_of_sale
      t.string :price
      t.string :status_id
      t.string :buyer_id

      t.timestamps
    end
  end
end
