class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :person_id
      t.string :car_id

      t.timestamps
    end
  end
end
