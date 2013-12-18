class ChangeTypesInClients < ActiveRecord::Migration
  def change
    change_column :clients, :person_id, :integer
    change_column :clients, :car_id, :integer
  end
end
