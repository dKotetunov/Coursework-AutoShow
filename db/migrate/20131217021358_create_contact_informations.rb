class CreateContactInformations < ActiveRecord::Migration
  def change
    create_table :contact_informations do |t|
      t.string :person_id
      t.integer :phone
      t.string :address

      t.timestamps
    end
  end
end
