class Appointment < ApplicationRecord
  self.primary_key = 'id'
  
  belongs_to :doctor
  belongs_to :patient
end
