class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.integer :person_id
      t.integer :position_id
      t.date :date_of_birth
      t.date :hire_date
      t.float :salary

      t.timestamps
    end
  end
end
