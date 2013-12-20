class Modification < ActiveRecord::Base
  validates :car_id, presence: true, numericality: { only_integer: true }
  validates :length, presence: true, numericality: { only_integer: true }
  validates :width, presence: true, numericality: true
  validates :height, presence: true, numericality: true
  validates :seats, presence: true, numericality: { only_integer: true }
  validates :weight, presence: true, numericality: { only_integer: true }
  validates :max_speed, presence: true, numericality: { only_integer: true }
  validates :type_of_engine, presence: true
  validates :engine_capacity, presence: true, numericality: true
  validates :fuel_supply_system, presence: true
  validates :fuel_consumption, presence: true, numericality: { only_integer: true }
end
