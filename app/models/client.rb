class Client < ActiveRecord::Base
  has_one :person

  validates :person_id, presence: true
  validates :car_id, presence: true
end
