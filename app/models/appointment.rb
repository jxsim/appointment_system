class Appointment < ApplicationRecord
  self.primary_key = 'id'
  
  belongs_to :doctor
  belongs_to :patient

  before_save do
    last_id = Appointment.last.id
    self.id = "A#{(last_id[1..last_id.length-1].to_i + 1)}"
  end

end
