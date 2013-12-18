class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.integer :person_id
      t.integer :car_id

      t.timestamps
    end
  end
end
