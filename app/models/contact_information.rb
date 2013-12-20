class ContactInformation < ActiveRecord::Base
  validates :person_id, presence: true, numericality: { only_integer: true }
  validates :phone, presence: true, uniqueness: true, numericality: { only_integer: true }
  validates :address, presence: true, uniqueness: true
end
