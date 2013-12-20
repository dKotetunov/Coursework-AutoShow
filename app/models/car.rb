class Car < ActiveRecord::Base
  validates :brand, presence: true, length: { minimum: 3 }
  validates :price, presence: true, numericality: true
  validates :status_id, presence: true, numericality: { only_integer: true }
  validates :buyer_id, presence: true, numericality: { only_integer: true }
end
