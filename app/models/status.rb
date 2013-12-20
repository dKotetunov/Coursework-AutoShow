class Status < ActiveRecord::Base
  validates :status, presence: true, length: { minimum: 3 }
end
