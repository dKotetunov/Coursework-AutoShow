class CreateBuyers < ActiveRecord::Migration
  def change
    create_table :buyers do |t|
      t.integer :person_id
      t.integer :car_id
      t.integer :employee_id
      t.integer :payment_method_id

      t.timestamps
    end
  end
end
