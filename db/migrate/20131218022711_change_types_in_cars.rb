class ChangeTypesInCars < ActiveRecord::Migration
  def change
    change_column :cars, :delivery_date, :date
    change_column :cars, :date_of_sale, :date
    change_column :cars, :price, :float
    change_column :cars, :status_id, :integer
    change_column :cars, :buyer_id, :integer
  end
end
