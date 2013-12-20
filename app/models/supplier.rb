class Supplier < ActiveRecord::Base
  validates :car_id, presence: true, numericality: { only_integer: true }
  validates :phone, presence: true, numericality: { only_integer: true }
  validates :address, presence: true, length: { minimum: 7 }
  validates :name, presence: true
end
