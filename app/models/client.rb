class Client < ActiveRecord::Base
  has_one :person

  validates :person_id, presence: true, numericality: { only_integer: true }
  validates :car_id, presence: true, numericality: { only_integer: true }
end
