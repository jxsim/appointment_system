class Doctor < ApplicationRecord
  self.primary_key = 'id'
  
  has_many :appointments
  has_many :patients, through: :appointments
end
