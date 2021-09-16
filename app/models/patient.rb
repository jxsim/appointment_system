class Patient < ApplicationRecord
  self.primary_key = 'id'
  
  has_many :appointments
  has_many :doctors, through: :appointments
end
