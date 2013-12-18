class ChangeTypesInContactInformations < ActiveRecord::Migration
  def change
    change_column :contact_informations, :person_id, :integer
  end
end
