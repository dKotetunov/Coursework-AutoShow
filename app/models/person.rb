class Person < ActiveRecord::Base
  belongs_to :client

  validates :first_name, presence: true, length: { minimum: 2 }
  validates :middle_name, presence: true, length: { minimum: 2 }
  validates :last_name, presence: true, length: { minimum: 2 }
end
