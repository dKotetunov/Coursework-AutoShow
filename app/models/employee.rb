class Employee < ActiveRecord::Base
  validates :person_id, presence: true, numericality: { only_integer: true }
  validates :position_id, presence: true, numericality: { only_integer: true }
  validates :date_of_birth, presence: true
  validates :hire_date, presence: true
  validates :salary, presence: true, numericality: true
end
