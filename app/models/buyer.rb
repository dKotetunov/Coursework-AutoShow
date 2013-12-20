class Buyer < ActiveRecord::Base
  validates :person_id, presence: true, numericality: { only_integer: true }
  validates :car_id, presence: true, numericality: { only_integer: true }
  validates :employee_id, presence: true, numericality: { only_integer: true }
  validates :payment_method_id, presence: true, numericality: { only_integer: true }
end